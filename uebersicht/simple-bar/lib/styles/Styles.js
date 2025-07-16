import { Theme } from './Theme.js';

export const SpacesStyles = /* css */ `
.spaces {
  display: flex;
  align-items: center;
  justify-content: center;
}
.space__inner {
  padding: 6px 6px 5px;
  background-color: ${Theme.minor};
  border-radius: 2px;
  cursor: pointer;
  user-select: none;
}
`;

export const BatteryStyles = /* css */ `
.battery {
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 6px 6px 5px;
  background-color: ${Theme.minor};
  border-radius: 2px;
}
.battery__charging-icon {
  width: 10px;
  height: 10px;
  margin: 0 2px 0 0;
  fill: white;
}
.battery__icon {
  margin-top: -2px;
  position: relative;
  width: 16px;
  height: 9px;
  margin-right: 8px;
  border-radius: 2px;
  border: 1px solid white;
}
.battery__icon::after {
  content: '';
  position: absolute;
  top: 10%;
  left: 100%;
  width: 3px;
  height: 80%;
  border-radius: 0 2px 2px 0;
  background-color: white;
}
.battery__icon-filler {
  position: absolute;
  top: 1px;
  left: 1px;
  width: calc(100% - 2px);
  height: calc(100% - 2px);
  background-color: #89C541;
  border-radius: 1px;
}
.battery--low .battery__icon-filler {
  background-color: ${Theme.red};
}
`;

export const SoundStyles = /* css */ `
.sound {
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 6px 6px 5px;
  background-color: ${Theme.minor};
  border-radius: 2px;
}
.sound__icon {
  width: 14px;
  height: 14px;
  margin-top: -2px;
  margin-right: 4px;
  fill: white;
}
`;

export const WifiStyles = /* css */ `
.wifi {
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 6px 6px 5px;
  background-color: ${Theme.minor};
  border-radius: 2px;
  cursor: pointer;
  user-select: none;
}
.wifi:hover {
  opacity: 0.7;
}
.wifi:active {
  transform: scale(0.9);
}
.wifi__icon {
  margin-top: -2px;
  width: 14px;
  height: 14px;
  margin-right: 7px;
  fill: white;
}
`;

export const DateStyles = /* css */ `
.date {
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 6px 6px 5px;
  background-color: ${Theme.minor};
  border-radius: 2px;
}
.date__icon {
  width: 14px;
  height: 14px;
  margin-right: 7px;
  fill: white;
}
`;

export const TimeStyles = /* css */ `
.time {
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 6px 6px 5px;
  background-color: #89C541;
  border-radius: 2px;
  color: ${Theme.minor}
}
.time__icon {
  width: 14px;
  height: 14px;
  margin-top: -2px;
  margin-right: 5px;
  fill: ${Theme.minor};
}
`;
