package com.google.android.material.ripple;
/* loaded from: classes.dex */
public final class a {
    static final String LOG_TAG = "a";
    static final String TRANSPARENT_DEFAULT_COLOR_WARNING = "Use a non-transparent color for the default color as it will be used to finish ripple animations.";

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f8061a = 0;

    public static boolean a(int[] iArr) {
        boolean z4 = false;
        boolean z5 = false;
        for (int i4 : iArr) {
            if (i4 == 16842910) {
                z4 = true;
            } else if (i4 == 16842908 || i4 == 16842919 || i4 == 16843623) {
                z5 = true;
            }
        }
        return z4 && z5;
    }
}
