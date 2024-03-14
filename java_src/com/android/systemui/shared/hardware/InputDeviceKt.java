package com.android.systemui.shared.hardware;

import android.view.InputDevice;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class InputDeviceKt {
    public static final boolean isAnyStylusSource(InputDevice inputDevice) {
        h.e(inputDevice, "<this>");
        return inputDevice.supportsSource(16386);
    }

    public static final boolean isExternalStylusSource(InputDevice inputDevice) {
        h.e(inputDevice, "<this>");
        return isAnyStylusSource(inputDevice) && inputDevice.isExternal();
    }

    public static final boolean isInternalStylusSource(InputDevice inputDevice) {
        h.e(inputDevice, "<this>");
        return isAnyStylusSource(inputDevice) && !inputDevice.isExternal();
    }
}
