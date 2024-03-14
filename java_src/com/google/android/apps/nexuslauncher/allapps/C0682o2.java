package com.google.android.apps.nexuslauncher.allapps;

import android.view.GestureDetector;
import android.view.MotionEvent;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.o2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0682o2 extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: d  reason: collision with root package name */
    public final Runnable f7139d;

    public C0682o2(RunnableC0666k2 runnableC0666k2) {
        this.f7139d = runnableC0666k2;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        this.f7139d.run();
        return super.onSingleTapConfirmed(motionEvent);
    }
}
