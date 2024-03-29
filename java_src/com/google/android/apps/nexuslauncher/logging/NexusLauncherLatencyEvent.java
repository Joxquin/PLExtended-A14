package com.google.android.apps.nexuslauncher.logging;

import com.android.launcher3.logging.StatsLogManager;
/* loaded from: classes.dex */
public enum NexusLauncherLatencyEvent implements StatsLogManager.EventEnum {
    LAUNCHER_LATENCY_SUGGEST_TOTAL_DURATION(967),
    LAUNCHER_LATENCY_SUGGEST_SEND_REQUEST_DURATION(968),
    LAUNCHER_LATENCY_SUGGEST_RECEIVE_RESPONSE_DURATION(969),
    LAUNCHER_LATENCY_SUGGEST_SERVER_DURATION(970),
    LAUNCHER_LATENCY_SUGGEST_GET_IMAGE_DURATION(984),
    LAUNCHER_LATENCY_ONDEVICE_CANCELLATION_DURATION(1213),
    LAUNCHER_LATENCY_ONDEVICE_SEARCH_DURATION(1059),
    LAUNCHER_LATENCY_ONDEVICE_SEARCH_LATE_DURATION(1239),
    LAUNCHER_LATENCY_FALLBACK_SEARCH_DURATION(1060),
    LAUNCHER_LATENCY_FALLBACK_SEARCH_DURATION_AFTER_ONDEVICE_TIMEOUT(1061),
    LAUNCHER_LATENCY_SELECT_SUGGESTION_DURATION(1081),
    LAUNCHER_LATENCY_DELETE_SUGGESTION_DURATION(1082),
    LAUNCHER_LATENCY_REPORT_SUGGESTION_DURATION(1083),
    LAUNCHER_LATENCY_SEARCH_GOOGLE_DURATION(1084),
    LAUNCHER_LATENCY_SHOW_IME_READY_DURATION(1214),
    LAUNCHER_LATENCY_SHOW_IME_CANCELLED_DURATION(1215),
    LAUNCHER_LATENCY_SHOW_IME_CANCELLED_INCREMENTAL_DURATION(1216),
    LAUNCHER_LATENCY_SHOW_IME_ANIMATION_DURATION(1217),
    LAUNCHER_LATENCY_HIDE_IME_READY_DURATION(1218),
    LAUNCHER_LATENCY_HIDE_IME_CANCELLED_DURATION(1219),
    LAUNCHER_LATENCY_HIDE_IME_CANCELLED_INCREMENTAL_DURATION(1220),
    LAUNCHER_LATENCY_HIDE_IME_ANIMATION_DURATION(1221),
    LAUNCHER_LATENCY_IME_READY_INVALID_HEIGHT_DURATION(1222),
    LAUNCHER_LATENCY_IME_CANCELLED_INVALID_HEIGHT_DURATION(1223),
    LAUNCHER_LATENCY_IME_FINISHED_INVALID_HEIGHT_DURATION(1224),
    LAUNCHER_LATENCY_IPC_DURATION(1242),
    LAUNCHER_LATENCY_GMS_PLAY_RECEIVE_COMPLETIONS_DURATION(1315),
    LAUNCHER_LATENCY_GMS_PLAY_RECEIVE_ASSET_DURATION(1329),
    LAUNCHER_LATENCY_GMS_PLAY_UNPACK_COMPLETIONS_DURATION(1476),
    LAUNCHER_LATENCY_QS_TILE_DURATION(1352),
    LAUNCHER_LATENCY_BLOBSTORE_FETCH_DURATION(1387);
    
    private final int mId;

    NexusLauncherLatencyEvent(int i4) {
        this.mId = i4;
    }

    @Override // com.android.launcher3.logging.StatsLogManager.EventEnum
    public final int getId() {
        return this.mId;
    }
}
