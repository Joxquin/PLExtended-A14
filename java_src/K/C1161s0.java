package k;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.lang.reflect.InvocationTargetException;
/* renamed from: k.s0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1161s0 extends ListView {

    /* renamed from: d  reason: collision with root package name */
    public final Rect f10963d;

    /* renamed from: e  reason: collision with root package name */
    public int f10964e;

    /* renamed from: f  reason: collision with root package name */
    public int f10965f;

    /* renamed from: g  reason: collision with root package name */
    public int f10966g;

    /* renamed from: h  reason: collision with root package name */
    public int f10967h;

    /* renamed from: i  reason: collision with root package name */
    public int f10968i;

    /* renamed from: j  reason: collision with root package name */
    public C1158q0 f10969j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f10970k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f10971l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f10972m;

    /* renamed from: n  reason: collision with root package name */
    public N.d f10973n;

    /* renamed from: o  reason: collision with root package name */
    public RunnableC1159r0 f10974o;

    public C1161s0(Context context, boolean z4) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.f10963d = new Rect();
        this.f10964e = 0;
        this.f10965f = 0;
        this.f10966g = 0;
        this.f10967h = 0;
        this.f10971l = z4;
        setCacheColorHint(0);
    }

    public final int a(int i4, int i5) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        int i6 = listPaddingTop + listPaddingBottom;
        if (adapter == null) {
            return i6;
        }
        dividerHeight = (dividerHeight <= 0 || divider == null) ? 0 : 0;
        int count = adapter.getCount();
        int i7 = 0;
        View view = null;
        for (int i8 = 0; i8 < count; i8++) {
            int itemViewType = adapter.getItemViewType(i8);
            if (itemViewType != i7) {
                view = null;
                i7 = itemViewType;
            }
            view = adapter.getView(i8, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i9 = layoutParams.height;
            view.measure(i4, i9 > 0 ? View.MeasureSpec.makeMeasureSpec(i9, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i8 > 0) {
                i6 += dividerHeight;
            }
            i6 += view.getMeasuredHeight();
            if (i6 >= i5) {
                return i5;
            }
        }
        return i6;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x011c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x014e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(android.view.MotionEvent r17, int r18) {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k.C1161s0.b(android.view.MotionEvent, int):boolean");
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable selector;
        if (!this.f10963d.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.f10963d);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.f10974o != null) {
            return;
        }
        super.drawableStateChanged();
        C1158q0 c1158q0 = this.f10969j;
        if (c1158q0 != null) {
            c1158q0.f10956e = true;
        }
        Drawable selector = getSelector();
        if (selector != null && this.f10972m && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean hasFocus() {
        return this.f10971l || super.hasFocus();
    }

    @Override // android.view.View
    public final boolean hasWindowFocus() {
        return this.f10971l || super.hasWindowFocus();
    }

    @Override // android.view.View
    public final boolean isFocused() {
        return this.f10971l || super.isFocused();
    }

    @Override // android.view.View
    public final boolean isInTouchMode() {
        return (this.f10971l && this.f10970k) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f10974o = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f10974o == null) {
            RunnableC1159r0 runnableC1159r0 = new RunnableC1159r0(this);
            this.f10974o = runnableC1159r0;
            post(runnableC1159r0);
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    requestFocus();
                    if (C1156p0.f10949d) {
                        try {
                            C1156p0.f10946a.invoke(this, Integer.valueOf(pointToPosition), childAt, Boolean.FALSE, -1, -1);
                            C1156p0.f10947b.invoke(this, Integer.valueOf(pointToPosition));
                            C1156p0.f10948c.invoke(this, Integer.valueOf(pointToPosition));
                        } catch (IllegalAccessException e4) {
                            e4.printStackTrace();
                        } catch (InvocationTargetException e5) {
                            e5.printStackTrace();
                        }
                    } else {
                        setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                    }
                }
                Drawable selector = getSelector();
                if (selector != null && this.f10972m && isPressed()) {
                    selector.setState(getDrawableState());
                }
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f10968i = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC1159r0 runnableC1159r0 = this.f10974o;
        if (runnableC1159r0 != null) {
            C1161s0 c1161s0 = runnableC1159r0.f10958d;
            c1161s0.f10974o = null;
            c1161s0.removeCallbacks(runnableC1159r0);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.AbsListView
    public final void setSelector(Drawable drawable) {
        C1158q0 c1158q0 = drawable != null ? new C1158q0(drawable) : null;
        this.f10969j = c1158q0;
        super.setSelector(c1158q0);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f10964e = rect.left;
        this.f10965f = rect.top;
        this.f10966g = rect.right;
        this.f10967h = rect.bottom;
    }
}
