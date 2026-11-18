window.addEventListener('message', (e) => {
  if (e.data.action === 'open') {
    document.getElementById('msg').textContent = e.data.text;
    document.getElementById('box').style.display = 'block';
  }
});

document.getElementById('close').onclick = () => {
  document.getElementById('box').style.display = 'none';
  fetch(`https://${GetParentResourceName()}/close`, { method: 'POST', body: '{}' });
};