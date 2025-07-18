import { Charging } from './Icons.jsx';
import { classnames } from '../utils.js';

const getTransform = (value) => {
    let transform = `0.${value}`;
    if (value === '100') transform = '1';
    if (value < 10) transform = `0.0${value}`;
    return `scaleX(${transform})`;
};

const Battery = ({ output }) => {
    if (!output) return;
    const { percentage, charging /*, remaining */ } = output;
    const isCharging = charging === 'true';
    const isLowBattery = !isCharging && percentage < 20;

    const classes = classnames('battery', {
        'battery--low': isLowBattery,
    });

    const transformValue = getTransform(percentage);

    return (
        <div className={classes}>
            {isCharging && <Charging className="battery__charging-icon" />}
            <div className="battery__icon">
                <div
                    className="battery__icon-filler"
                    style={{ transform: transformValue }}
                />
            </div>
            <div className="battery__text">{percentage}%</div>
        </div>
    );
};

export default Battery;
