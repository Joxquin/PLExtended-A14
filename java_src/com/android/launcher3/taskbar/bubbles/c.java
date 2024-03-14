package com.android.launcher3.taskbar.bubbles;

import android.view.View;
import com.android.launcher3.taskbar.bubbles.BubbleDragController;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5105d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ BubbleDragController.BubbleTouchListener f5106e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ View f5107f;

    public /* synthetic */ c(BubbleDragController.BubbleTouchListener bubbleTouchListener, View view, int i4) {
        this.f5105d = i4;
        this.f5106e = bubbleTouchListener;
        this.f5107f = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5105d) {
            case 0:
                BubbleDragController.BubbleTouchListener.b(this.f5106e, this.f5107f);
                return;
            default:
                BubbleDragController.BubbleTouchListener.a(this.f5106e, this.f5107f);
                return;
        }
    }
}
