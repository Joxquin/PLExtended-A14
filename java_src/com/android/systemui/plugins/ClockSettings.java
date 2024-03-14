package com.android.systemui.plugins;

import kotlin.jvm.internal.f;
import kotlin.jvm.internal.h;
import n1.g;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class ClockSettings {
    public static final g Companion = new g();
    private static final String KEY_CLOCK_ID = "clockId";
    private static final String KEY_METADATA = "metadata";
    private static final String KEY_SEED_COLOR = "seedColor";
    private final String clockId;
    private JSONObject metadata;
    private final Integer seedColor;

    public ClockSettings() {
        this(null, null, 3, null);
    }

    public static /* synthetic */ ClockSettings copy$default(ClockSettings clockSettings, String str, Integer num, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = clockSettings.clockId;
        }
        if ((i4 & 2) != 0) {
            num = clockSettings.seedColor;
        }
        return clockSettings.copy(str, num);
    }

    public final String component1() {
        return this.clockId;
    }

    public final Integer component2() {
        return this.seedColor;
    }

    public final ClockSettings copy(String str, Integer num) {
        return new ClockSettings(str, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClockSettings) {
            ClockSettings clockSettings = (ClockSettings) obj;
            return h.a(this.clockId, clockSettings.clockId) && h.a(this.seedColor, clockSettings.seedColor);
        }
        return false;
    }

    public final String getClockId() {
        return this.clockId;
    }

    public final JSONObject getMetadata() {
        return this.metadata;
    }

    public final Integer getSeedColor() {
        return this.seedColor;
    }

    public int hashCode() {
        String str = this.clockId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.seedColor;
        return hashCode + (num != null ? num.hashCode() : 0);
    }

    public final void setMetadata(JSONObject jSONObject) {
        h.e(jSONObject, "<set-?>");
        this.metadata = jSONObject;
    }

    public String toString() {
        String str = this.clockId;
        Integer num = this.seedColor;
        return "ClockSettings(clockId=" + str + ", seedColor=" + num + ")";
    }

    public ClockSettings(String str, Integer num) {
        this.clockId = str;
        this.seedColor = num;
        this.metadata = new JSONObject();
    }

    public /* synthetic */ ClockSettings(String str, Integer num, int i4, f fVar) {
        this((i4 & 1) != 0 ? null : str, (i4 & 2) != 0 ? null : num);
    }
}
