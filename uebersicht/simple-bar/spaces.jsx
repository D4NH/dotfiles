import { SpacesStyles } from './lib/styles/Styles.js';
import { Theme } from './lib/styles/Theme.js';

export const refreshFrequency = false;

export const className = /* css */ `
  .simple-bar__error,
  .simple-bar__spaces {
    position: fixed;
    top: 8px;
    left: 5px;
    padding: 4px 5px;
    color: white;
    font-size: 11px;
    font-family: ${Theme.font};
    z-index: 1;
  }
  ${SpacesStyles}
`;

export const render = () => {
    return (
        <div className="simple-bar__spaces">
            <div className="spaces">
                <div className="space__inner">Danh Nguyen</div>
            </div>
        </div>
    );
};
