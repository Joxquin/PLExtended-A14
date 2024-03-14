package com.google.android.material.snackbar;

import D2.b;
import D2.d;
import D2.h;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
/* loaded from: classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior {

    /* renamed from: h  reason: collision with root package name */
    public final b f8062h = new b(this);

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, z.c
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.f8062h.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                synchronized (h.a().f326a) {
                }
            }
        } else if (coordinatorLayout.i((int) motionEvent.getX(), view, (int) motionEvent.getY())) {
            synchronized (h.a().f326a) {
            }
        }
        return super.g(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    public final boolean s(View view) {
        this.f8062h.getClass();
        return view instanceof d;
    }
}
