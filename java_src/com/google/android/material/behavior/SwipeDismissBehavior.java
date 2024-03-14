package com.google.android.material.behavior;

import Q.i;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import java.util.WeakHashMap;
import l2.C1289c;
import l2.C1290d;
import l2.InterfaceC1291e;
import z.c;
/* loaded from: classes.dex */
public class SwipeDismissBehavior extends c {

    /* renamed from: a  reason: collision with root package name */
    public i f7740a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f7741b;

    /* renamed from: c  reason: collision with root package name */
    public int f7742c = 2;

    /* renamed from: d  reason: collision with root package name */
    public final float f7743d = 0.5f;

    /* renamed from: e  reason: collision with root package name */
    public float f7744e = 0.0f;

    /* renamed from: f  reason: collision with root package name */
    public float f7745f = 0.5f;

    /* renamed from: g  reason: collision with root package name */
    public final C1289c f7746g = new C1289c(this);

    @Override // z.c
    public boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z4 = this.f7741b;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z4 = coordinatorLayout.i((int) motionEvent.getX(), view, (int) motionEvent.getY());
            this.f7741b = z4;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f7741b = false;
        }
        if (z4) {
            if (this.f7740a == null) {
                this.f7740a = new i(coordinatorLayout.getContext(), coordinatorLayout, this.f7746g);
            }
            return this.f7740a.q(motionEvent);
        }
        return false;
    }

    public InterfaceC1291e getListener() {
        return null;
    }

    @Override // z.c
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i4) {
        WeakHashMap weakHashMap = J.f3079a;
        if (C0186x.b(view) == 0) {
            C0186x.o(view, 1);
            J.f(view, 1048576);
            J.d(view, 0);
            if (s(view)) {
                J.g(view, M.c.f1339j, new C1290d(this));
            }
        }
        return false;
    }

    @Override // z.c
    public final boolean r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        i iVar = this.f7740a;
        if (iVar != null) {
            iVar.j(motionEvent);
            return true;
        }
        return false;
    }

    public boolean s(View view) {
        return true;
    }
}
