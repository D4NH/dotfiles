import { VolumeHigh, VolumeLow, NoVolume, VolumeMuted } from './Icons.jsx';

const Sound = ({ output }) => {
    if (!output) return;
    const { volume, muted } = output;
    const isMuted = muted === 'true';

    const volumeText = volume === 'missing value' ? '100' : volume;

    const Icon =
        isMuted && volume !== '0'
            ? VolumeMuted
            : volume === '0'
            ? NoVolume
            : volume < 50
            ? VolumeLow
            : VolumeHigh;

    return (
        <div className="sound">
            <Icon className="sound__icon" />
            {volumeText}%
        </div>
    );
};

export default Sound;
