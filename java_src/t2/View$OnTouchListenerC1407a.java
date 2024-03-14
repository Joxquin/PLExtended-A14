package t2;

import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
/* renamed from: t2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class View$OnTouchListenerC1407a implements View.OnTouchListener {

    /* renamed from: d  reason: collision with root package name */
    public final Dialog f12351d;

    /* renamed from: e  reason: collision with root package name */
    public final int f12352e;

    /* renamed from: f  reason: collision with root package name */
    public final int f12353f;

    public View$OnTouchListenerC1407a(Dialog dialog, Rect rect) {
        this.f12351d = dialog;
        this.f12352e = rect.left;
        this.f12353f = rect.top;
        ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = view.findViewById(16908290);
        int left = findViewById.getLeft() + this.f12352e;
        int width = findViewById.getWidth() + left;
        int top = findViewById.getTop() + this.f12353f;
        if (new RectF(left, top, width, findViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        view.performClick();
        return this.f12351d.onTouchEvent(obtain);
    }
}
