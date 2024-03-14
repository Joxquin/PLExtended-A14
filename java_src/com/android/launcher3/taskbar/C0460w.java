package com.android.launcher3.taskbar;

import java.util.function.IntPredicate;
/* renamed from: com.android.launcher3.taskbar.w  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0460w implements IntPredicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5169a;

    @Override // java.util.function.IntPredicate
    public final boolean test(int i4) {
        switch (this.f5169a) {
            case 0:
                return (i4 & 1) != 0 && (i4 & 4) == 0;
            case 1:
                return (i4 & 32) == 0 && (i4 & 2048) == 0;
            case 2:
                return (i4 & 8192) == 0;
            case 3:
                return (i4 & 32) == 0;
            case 4:
                return (i4 & 5120) == 0;
            case 5:
                return (i4 & 16384) != 0;
            case 6:
                return (i4 & 16) != 0;
            case 7:
                return (i4 & 2) != 0;
            case 8:
                return (i4 & 2) == 0;
            case 9:
                int i5 = i4 & 32;
                boolean z4 = (i5 != 0 && (i4 & 16) == 0 && (i4 & 64) == 0) ? false : true;
                if ((i4 & 512) == 0) {
                    return i5 == 0 || z4;
                }
                return false;
            case 10:
                return (i4 & 2) != 0;
            case 11:
                return ((i4 & 16) == 0 && (i4 & 32) == 0) ? false : true;
            case 12:
                return (i4 & 32) == 0 && (i4 & 128) == 0;
            default:
                return (i4 & 8) != 0 && (i4 & 4) == 0;
        }
    }
}
