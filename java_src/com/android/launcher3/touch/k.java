package com.android.launcher3.touch;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
/* loaded from: classes.dex */
public final /* synthetic */ class k {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5214a;

    public final void a(int i4, int i5, Object obj) {
        switch (this.f5214a) {
            case 0:
                ((View) obj).scrollBy(i4, i5);
                return;
            default:
                ((View) obj).scrollTo(i4, i5);
                return;
        }
    }

    public final void b(Object obj, float f4, float f5) {
        switch (this.f5214a) {
            case 2:
                ((Canvas) obj).translate(f4, f5);
                return;
            default:
                ((Matrix) obj).postTranslate(f4, f5);
                return;
        }
    }
}
