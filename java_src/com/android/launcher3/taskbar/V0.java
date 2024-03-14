package com.android.launcher3.taskbar;

import android.view.View;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.util.MultiTranslateDelegate;
/* loaded from: classes.dex */
public final /* synthetic */ class V0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5080d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5081e;

    public /* synthetic */ V0(int i4, Object obj) {
        this.f5080d = i4;
        this.f5081e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5080d) {
            case 0:
                ((AnimatorPlaybackController) this.f5081e).setPlayFraction(0.0f);
                return;
            case 1:
                ((MultiTranslateDelegate) this.f5081e).setTranslation(0.0f, 0.0f, 4);
                return;
            default:
                View view = (View) this.f5081e;
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                return;
        }
    }
}
