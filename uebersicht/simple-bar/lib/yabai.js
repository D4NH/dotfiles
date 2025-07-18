import { run } from 'uebersicht';

const refreshSpaces = () => {
    run(
        `osascript -e 'tell application id "tracesOf.Uebersicht" to refresh widget id "simple-bar-spaces-jsx"'`
    );
    run(
        `osascript -e 'tell application id "tracesOf.Uebersicht" to refresh widget id "simple-bar-spaces-2-jsx"'`
    );
};

export const goToSpace = async (index, focusedSpace) => {
    if (index === focusedSpace) return;
    await run(`/opt/homebrew/bin/yabai -m space --focus ${index}`);
};

export const createSpace = (displayId) => {
    run(`/opt/homebrew/bin/yabai -m display --focus ${displayId}`).then(() => {
        run('/opt/homebrew/bin/yabai -m space --create').then(refreshSpaces);
    });
};

export const removeSpace = (index, displayId) => {
    run(`/opt/homebrew/bin/yabai -m display --focus ${displayId}`).then(
        async () => {
            run(`/opt/homebrew/bin/yabai -m space ${index} --destroy`).then(
                refreshSpaces
            );
        }
    );
};

export const swapSpace = (index, direction) => {
    const action = direction === 'left' ? index - 1 : index + 1;
    run(`/opt/homebrew/bin/yabai -m space ${index} --swap ${action}`).then(
        refreshSpaces
    );
};
