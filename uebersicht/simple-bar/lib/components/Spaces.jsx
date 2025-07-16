import { clickEffect } from '../utils.js';
import { createSpace } from '../yabai.js';

export const refreshFrequency = false;

const Spaces = ({ output, SIP, displayId }) => {
    const { displays, spaces, windows } = output;
    let focusedSpace;

    if (!output)
        return <div className="spaces-display spaces-display--empty" />;

    return displays.map((display, i) => {
        if (display.index !== displayId) return null;
        const onClick = (e) => {
            clickEffect(e);
            createSpace(displayId);
        };
        return (
            <div key={i} className="spaces">
                <div className="space__inner" onClick={onClick}>
                    Danh Nguyen
                </div>
            </div>
        );
    });
};

export default Spaces;
