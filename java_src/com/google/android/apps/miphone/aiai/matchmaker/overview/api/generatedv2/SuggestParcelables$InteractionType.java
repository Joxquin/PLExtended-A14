package com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2;

import android.os.Bundle;
/* loaded from: classes.dex */
public enum SuggestParcelables$InteractionType {
    UNKNOWN(0),
    LONG_PRESS(1),
    GLEAM(2),
    CHIP(3),
    GLEAM_CHIP(4),
    SCREENSHOT_NOTIFICATION(5),
    SELECT_MODE(6),
    SETUP(7),
    COMPOSE(8),
    OCR_SMART_REPLY(9),
    PIXEL_SEARCH(10),
    OVERVIEW_SHARING(11),
    QUICK_SHARE(12);
    
    public final int value;

    SuggestParcelables$InteractionType(int i4) {
        this.value = i4;
    }

    public static SuggestParcelables$InteractionType a(Bundle bundle) {
        int i4 = bundle.getInt("value");
        if (i4 == 0) {
            return UNKNOWN;
        }
        if (i4 == 1) {
            return LONG_PRESS;
        }
        if (i4 == 2) {
            return GLEAM;
        }
        if (i4 == 3) {
            return CHIP;
        }
        if (i4 == 4) {
            return GLEAM_CHIP;
        }
        if (i4 == 5) {
            return SCREENSHOT_NOTIFICATION;
        }
        if (i4 == 6) {
            return SELECT_MODE;
        }
        if (i4 == 7) {
            return SETUP;
        }
        if (i4 == 8) {
            return COMPOSE;
        }
        if (i4 == 9) {
            return OCR_SMART_REPLY;
        }
        if (i4 == 10) {
            return PIXEL_SEARCH;
        }
        if (i4 == 11) {
            return OVERVIEW_SHARING;
        }
        if (i4 == 12) {
            return QUICK_SHARE;
        }
        return null;
    }

    public final Bundle c() {
        Bundle bundle = new Bundle();
        bundle.putInt("value", this.value);
        return bundle;
    }
}
