package com.google.android.systemui.smartspace;

import K2.L;
import K2.M;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.google.android.systemui.smartspace.InterceptingViewPager;
import j0.C1111n;
/* loaded from: classes.dex */
public class InterceptingViewPager extends C1111n {

    /* renamed from: T  reason: collision with root package name */
    public final L f8370T;

    /* renamed from: U  reason: collision with root package name */
    public final L f8371U;

    /* renamed from: V  reason: collision with root package name */
    public final M f8372V;

    /* renamed from: W  reason: collision with root package name */
    public boolean f8373W;

    /* renamed from: a0  reason: collision with root package name */
    public boolean f8374a0;

    /* JADX WARN: Type inference failed for: r2v3, types: [K2.M] */
    public InterceptingViewPager(Context context) {
        super(context);
        this.f8370T = new L(this, 2);
        this.f8371U = new L(this, 3);
        this.f8372V = new Runnable(this) { // from class: K2.M

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ InterceptingViewPager f953e;

            {
                this.f953e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                        InterceptingViewPager interceptingViewPager = this.f953e;
                        interceptingViewPager.f8373W = true;
                        if (interceptingViewPager.performLongClick()) {
                            interceptingViewPager.getParent().requestDisallowInterceptTouchEvent(true);
                            return;
                        }
                        return;
                    default:
                        InterceptingViewPager interceptingViewPager2 = this.f953e;
                        interceptingViewPager2.f8373W = true;
                        if (interceptingViewPager2.performLongClick()) {
                            interceptingViewPager2.getParent().requestDisallowInterceptTouchEvent(true);
                            return;
                        }
                        return;
                }
            }
        };
    }

    @Override // j0.C1111n, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return z(motionEvent, this.f8371U);
    }

    @Override // j0.C1111n, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        return z(motionEvent, this.f8370T);
    }

    public final void y() {
        if (this.f8374a0) {
            this.f8374a0 = false;
            removeCallbacks(this.f8372V);
        }
    }

    public final boolean z(MotionEvent motionEvent, L l4) {
        boolean onInterceptTouchEvent;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f8373W = false;
            if (isLongClickable()) {
                y();
                this.f8374a0 = true;
                postDelayed(this.f8372V, ViewConfiguration.getLongPressTimeout());
            }
        } else if (action == 1 || action == 3) {
            y();
        }
        if (this.f8373W) {
            y();
            return true;
        }
        int i4 = l4.f950a;
        InterceptingViewPager interceptingViewPager = l4.f951b;
        switch (i4) {
            case 0:
            case 2:
                onInterceptTouchEvent = super.onTouchEvent(motionEvent);
                break;
            case 1:
            default:
                onInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
                break;
        }
        if (onInterceptTouchEvent) {
            y();
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [K2.M] */
    public InterceptingViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8370T = new L(this, 0);
        this.f8371U = new L(this, 1);
        this.f8372V = new Runnable(this) { // from class: K2.M

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ InterceptingViewPager f953e;

            {
                this.f953e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                        InterceptingViewPager interceptingViewPager = this.f953e;
                        interceptingViewPager.f8373W = true;
                        if (interceptingViewPager.performLongClick()) {
                            interceptingViewPager.getParent().requestDisallowInterceptTouchEvent(true);
                            return;
                        }
                        return;
                    default:
                        InterceptingViewPager interceptingViewPager2 = this.f953e;
                        interceptingViewPager2.f8373W = true;
                        if (interceptingViewPager2.performLongClick()) {
                            interceptingViewPager2.getParent().requestDisallowInterceptTouchEvent(true);
                            return;
                        }
                        return;
                }
            }
        };
    }
}
