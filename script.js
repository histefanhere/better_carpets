const carpetColours = {
    'pink': {
        name: 'Pink',
        tag: 'bc_home_pink',
        colour: '#ed7999'
    },
    'blue': {
        name: 'Blue',
        tag: 'bc_home_blue',
        colour: 'blue'
    },
    'magenta': {
        name: 'Magenta',
        tag: 'bc_home_magenta',
        colour: 'light_purple'
    },
    'light_blue': {
        name: 'Light Blue',
        tag: 'bc_home_light_blue',
        colour: 'aqua'
    },
    'gray': {
        name: 'Gray',
        tag: 'bc_home_gray',
        colour: 'dark_gray'
    },
    'light_gray': {
        name: 'Light Gray',
        tag: 'bc_home_light_gray',
        colour: 'gray'
    },
    'cyan': {
        name: 'Cyan',
        tag: 'bc_home_cyan',
        colour: 'dark_aqua'
    },
    'brown': {
        name: 'Brown',
        tag: 'bc_home_brown',
        colour: '#784726'
    },
    'black': {
        name: 'Black',
        tag: 'bc_home_black',
        colour: '#2e2e2e'
    }
}

const fourm = document.querySelector('form');
const result = document.getElementById('result');

fourm.addEventListener('submit', (e) => {
    e.preventDefault();

    // Don't allow an empty carpet name - always fill it back in with "home" if it's empty
    if (fourm.carpetName.value == '') {
        fourm.carpetName.value = 'home';
    }

    if (!fourm.checkValidity()) {
        fourm.classList.add('was-validated');
        e.stopPropagation();
        return;
    }
    fourm.classList.remove('was-validated');

    const username = fourm.mcusername.value;
    const carpetColour = fourm.carpetColour.value;
    const carpet = carpetColours[carpetColour];
    const carpetName = fourm.carpetName.value;

    const x = fourm.x.value;
    const y = fourm.y.value;
    const z = fourm.z.value;
    const dimension = fourm.dimension.value;

    result.innerHTML = '';

    const alert = document.createElement('div');
    alert.classList.add('alert', 'alert-success');
    alert.setAttribute('role', 'alert');

    let dimensionOption = `in ${dimension} `;
    if (dimension == 'overworld') {
        dimensionOption = '';
    }

    let output = `
        <h3 class="alert-heading">Steps</h3>
        <strong>TIP:</strong> You can quickly select a command by triple-clicking on it to select the whole command, then copy it with Ctrl+C.
        <hr>
        First, make sure that the player has the correct tag applied to them that allows them to interact with the carpet. To do so, run the following command in the Minecraft chat:
        <br>
        <code>/tag ${username} add bc_HOME_${String(carpetColour).toUpperCase()}</code>
        <br>
        <br>
        Then create a command block with the following command which will teleport the player to the destination when they step on a ${carpet.name} carpet:
        <br>
        <code>/execute as @a[tag=bc_from_${carpetColour}] as @s[name=${username}] ${dimensionOption} run tp @s ${x} ${y} ${z}</code>
        <br>
        <br>
    `;

    if (carpetName == 'home') {
        output += `Since the carpet name is just "home", no further commands are needed.`;
    }
    else {
        output += `
            Finally, create another command block which will create the title with the correct carpet name and colour when the player steps on the carpet:
            <br>
            <code>/execute as @a[tag=bc_title_${carpetColour}] as @s[name=${username}] run title @s subtitle [{"text":"Teleporting to: "},{"text":"${carpetName}","bold":true,"color":"${carpet.colour}"}]</code>
        `;
    }

    alert.innerHTML = output;

    result.appendChild(alert);

    result.scrollIntoView({ behavior: 'smooth' })
});
