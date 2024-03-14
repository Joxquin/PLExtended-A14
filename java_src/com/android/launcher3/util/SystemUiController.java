package com.android.launcher3.util;

import android.view.Window;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class SystemUiController {
    private final int[] mStates = new int[5];
    private final Window mWindow;

    public SystemUiController(Window window) {
        this.mWindow = window;
    }

    public final int getBaseSysuiVisibility() {
        int i4 = this.mStates[0];
        int systemUiVisibility = this.mWindow.getDecorView().getSystemUiVisibility();
        if ((i4 & 1) != 0) {
            systemUiVisibility |= 16;
        } else if ((i4 & 2) != 0) {
            systemUiVisibility &= -17;
        }
        return (i4 & 4) != 0 ? systemUiVisibility | 8192 : (i4 & 8) != 0 ? systemUiVisibility & (-8193) : systemUiVisibility;
    }

    public final String toString() {
        return "mStates=" + Arrays.toString(this.mStates);
    }

    public final void updateUiState(int i4, int i5) {
        int[] iArr = this.mStates;
        if (iArr[i4] == i5) {
            return;
        }
        iArr[i4] = i5;
        Window window = this.mWindow;
        int systemUiVisibility = window.getDecorView().getSystemUiVisibility();
        int i6 = systemUiVisibility;
        for (int i7 : iArr) {
            if ((i7 & 1) != 0) {
                i6 |= 16;
            } else if ((i7 & 2) != 0) {
                i6 &= -17;
            }
            if ((i7 & 4) != 0) {
                i6 |= 8192;
            } else if ((i7 & 8) != 0) {
                i6 &= -8193;
            }
        }
        if (i6 != systemUiVisibility) {
            window.getDecorView().setSystemUiVisibility(i6);
        }
    }
}
