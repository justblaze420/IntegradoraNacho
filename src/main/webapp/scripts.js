document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('myForm');
    const table = document.getElementById('dataTable');
    let data = [];

    form.addEventListener('submit', function(event) {
        event.preventDefault();

        const nameInput = document.getElementById('name');
        const emailInput = document.getElementById('email');

        const name = nameInput.value;
        const email = emailInput.value;

        const newData = { name, email };
        data.push(newData);

        nameInput.value = '';
        emailInput.value = '';

        localStorage.setItem('formData', JSON.stringify(data));

        window.location.href = 'table.html';
    });

    if (window.location.pathname.includes('table.html')) {
        const storedData = localStorage.getItem('formData');

        if (storedData) {
            data = JSON.parse(storedData);
            renderTable();
        }
    }

    function renderTable() {
        table.innerHTML = `
      <tr>
        <th>Nombre</th>
        <th>Email</th>
        <th>Acciones</th>
      </tr>
    `;

        data.forEach(function(item, index) {
            const row = document.createElement('tr');
            const nameCell = document.createElement('td');
            const emailCell = document.createElement('td');
            const actionsCell = document.createElement('td');

            nameCell.textContent = item.name;
            emailCell.textContent = item.email;

            const deleteButton = document.createElement('button');
            deleteButton.textContent = 'Eliminar';
            deleteButton.addEventListener('click', function() {
                data.splice(index, 1);
                localStorage.setItem('formData', JSON.stringify(data));
                renderTable();
            });

            actionsCell.appendChild(deleteButton);

            row.appendChild(nameCell);
            row.appendChild(emailCell);
            row.appendChild(actionsCell);

            table.appendChild(row);
        });
    }
});
