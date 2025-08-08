import { encodePlayer } from "@dust/world/internal";
import { dustClient } from "./dustClient";

export const worldAddress = "0x253eb85B3C953bFE3827CC14a151262482E7189C";
export const playerEntityId = encodePlayer(dustClient.appContext.userAddress);
