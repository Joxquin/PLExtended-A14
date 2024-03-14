package com.android.systemui.shared.hardware;

import android.hardware.input.InputManager;
import android.view.InputDevice;
import java.util.Iterator;
import kotlin.jvm.internal.h;
import kotlin.sequences.b;
import kotlin.sequences.g;
import kotlin.sequences.j;
import m3.l;
/* loaded from: classes.dex */
public final class InputManagerKt {
    public static final InputDevice findInputDevice(InputManager inputManager, l predicate) {
        Object obj;
        h.e(inputManager, "<this>");
        h.e(predicate, "predicate");
        Iterator it = getInputDeviceSequence(inputManager).iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((Boolean) predicate.invoke((InputDevice) obj)).booleanValue()) {
                break;
            }
        }
        return (InputDevice) obj;
    }

    public static final g getInputDeviceSequence(final InputManager inputManager) {
        h.e(inputManager, "<this>");
        int[] inputDeviceIds = inputManager.getInputDeviceIds();
        h.d(inputDeviceIds, "inputDeviceIds");
        return j.b(inputDeviceIds.length == 0 ? b.f11271a : new kotlin.collections.l(inputDeviceIds), new l() { // from class: com.android.systemui.shared.hardware.InputManagerKt$getInputDeviceSequence$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final InputDevice invoke(int i4) {
                return inputManager.getInputDevice(i4);
            }

            @Override // m3.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke(((Number) obj).intValue());
            }
        });
    }

    public static final boolean hasAnyStylusSource(InputManager inputManager) {
        h.e(inputManager, "<this>");
        return hasInputDevice(inputManager, new l() { // from class: com.android.systemui.shared.hardware.InputManagerKt$hasAnyStylusSource$1
            @Override // m3.l
            public final Boolean invoke(InputDevice it) {
                h.e(it, "it");
                return Boolean.valueOf(InputDeviceKt.isAnyStylusSource(it));
            }
        });
    }

    public static final boolean hasExternalStylusSource(InputManager inputManager) {
        h.e(inputManager, "<this>");
        return hasInputDevice(inputManager, new l() { // from class: com.android.systemui.shared.hardware.InputManagerKt$hasExternalStylusSource$1
            @Override // m3.l
            public final Boolean invoke(InputDevice it) {
                h.e(it, "it");
                return Boolean.valueOf(InputDeviceKt.isExternalStylusSource(it));
            }
        });
    }

    public static final boolean hasInputDevice(InputManager inputManager, l predicate) {
        h.e(inputManager, "<this>");
        h.e(predicate, "predicate");
        for (InputDevice inputDevice : getInputDeviceSequence(inputManager)) {
            if (((Boolean) predicate.invoke(inputDevice)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public static final boolean hasInternalStylusSource(InputManager inputManager) {
        h.e(inputManager, "<this>");
        return hasInputDevice(inputManager, new l() { // from class: com.android.systemui.shared.hardware.InputManagerKt$hasInternalStylusSource$1
            @Override // m3.l
            public final Boolean invoke(InputDevice it) {
                h.e(it, "it");
                return Boolean.valueOf(InputDeviceKt.isInternalStylusSource(it));
            }
        });
    }
}
