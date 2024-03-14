package Q;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.OverScroller;
import androidx.core.view.J;
import java.util.Arrays;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: v  reason: collision with root package name */
    public static final f f1584v = new f();

    /* renamed from: a  reason: collision with root package name */
    public int f1585a;

    /* renamed from: b  reason: collision with root package name */
    public int f1586b;

    /* renamed from: d  reason: collision with root package name */
    public float[] f1588d;

    /* renamed from: e  reason: collision with root package name */
    public float[] f1589e;

    /* renamed from: f  reason: collision with root package name */
    public float[] f1590f;

    /* renamed from: g  reason: collision with root package name */
    public float[] f1591g;

    /* renamed from: h  reason: collision with root package name */
    public int[] f1592h;

    /* renamed from: i  reason: collision with root package name */
    public int[] f1593i;

    /* renamed from: j  reason: collision with root package name */
    public int[] f1594j;

    /* renamed from: k  reason: collision with root package name */
    public int f1595k;

    /* renamed from: l  reason: collision with root package name */
    public VelocityTracker f1596l;

    /* renamed from: m  reason: collision with root package name */
    public final float f1597m;

    /* renamed from: n  reason: collision with root package name */
    public final float f1598n;

    /* renamed from: o  reason: collision with root package name */
    public final int f1599o;

    /* renamed from: p  reason: collision with root package name */
    public final OverScroller f1600p;

    /* renamed from: q  reason: collision with root package name */
    public final h f1601q;

    /* renamed from: r  reason: collision with root package name */
    public View f1602r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f1603s;

    /* renamed from: t  reason: collision with root package name */
    public final ViewGroup f1604t;

    /* renamed from: c  reason: collision with root package name */
    public int f1587c = -1;

    /* renamed from: u  reason: collision with root package name */
    public final g f1605u = new g(this);

    public i(Context context, ViewGroup viewGroup, h hVar) {
        if (viewGroup == null) {
            throw new NullPointerException("Parent view may not be null");
        }
        if (hVar == null) {
            throw new NullPointerException("Callback may not be null");
        }
        this.f1604t = viewGroup;
        this.f1601q = hVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f1599o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f1586b = viewConfiguration.getScaledTouchSlop();
        this.f1597m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f1598n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f1600p = new OverScroller(context, f1584v);
    }

    public final void a() {
        this.f1587c = -1;
        float[] fArr = this.f1588d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f1589e, 0.0f);
            Arrays.fill(this.f1590f, 0.0f);
            Arrays.fill(this.f1591g, 0.0f);
            Arrays.fill(this.f1592h, 0);
            Arrays.fill(this.f1593i, 0);
            Arrays.fill(this.f1594j, 0);
            this.f1595k = 0;
        }
        VelocityTracker velocityTracker = this.f1596l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f1596l = null;
        }
    }

    public final void b(View view, int i4) {
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = this.f1604t;
        if (parent != viewGroup) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + viewGroup + ")");
        }
        this.f1602r = view;
        this.f1587c = i4;
        this.f1601q.e(view, i4);
        o(1);
    }

    public final boolean c(int i4, float f4, float f5, int i5) {
        float abs = Math.abs(f4);
        float abs2 = Math.abs(f5);
        if ((this.f1592h[i4] & i5) != i5 || (0 & i5) == 0 || (this.f1594j[i4] & i5) == i5 || (this.f1593i[i4] & i5) == i5) {
            return false;
        }
        int i6 = this.f1586b;
        if (abs > i6 || abs2 > i6) {
            if (abs < abs2 * 0.5f) {
                this.f1601q.getClass();
            }
            return (this.f1593i[i4] & i5) == 0 && abs > ((float) this.f1586b);
        }
        return false;
    }

    public final boolean d(View view, float f4, float f5) {
        if (view == null) {
            return false;
        }
        h hVar = this.f1601q;
        boolean z4 = hVar.c(view) > 0;
        boolean z5 = hVar.d() > 0;
        if (!z4 || !z5) {
            return z4 ? Math.abs(f4) > ((float) this.f1586b) : z5 && Math.abs(f5) > ((float) this.f1586b);
        }
        float f6 = f5 * f5;
        int i4 = this.f1586b;
        return f6 + (f4 * f4) > ((float) (i4 * i4));
    }

    public final void e(int i4) {
        float[] fArr = this.f1588d;
        if (fArr != null) {
            int i5 = this.f1595k;
            int i6 = 1 << i4;
            if ((i5 & i6) != 0) {
                fArr[i4] = 0.0f;
                this.f1589e[i4] = 0.0f;
                this.f1590f[i4] = 0.0f;
                this.f1591g[i4] = 0.0f;
                this.f1592h[i4] = 0;
                this.f1593i[i4] = 0;
                this.f1594j[i4] = 0;
                this.f1595k = (~i6) & i5;
            }
        }
    }

    public final int f(int i4, int i5, int i6) {
        int width;
        if (i4 == 0) {
            return 0;
        }
        float width2 = this.f1604t.getWidth() / 2;
        float sin = (((float) Math.sin((Math.min(1.0f, Math.abs(i4) / width) - 0.5f) * 0.47123894f)) * width2) + width2;
        int abs = Math.abs(i5);
        return Math.min(abs > 0 ? Math.round(Math.abs(sin / abs) * 1000.0f) * 4 : (int) (((Math.abs(i4) / i6) + 1.0f) * 256.0f), 600);
    }

    public final boolean g() {
        if (this.f1585a == 2) {
            OverScroller overScroller = this.f1600p;
            boolean computeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.f1602r.getLeft();
            int top = currY - this.f1602r.getTop();
            if (left != 0) {
                View view = this.f1602r;
                WeakHashMap weakHashMap = J.f3079a;
                view.offsetLeftAndRight(left);
            }
            if (top != 0) {
                View view2 = this.f1602r;
                WeakHashMap weakHashMap2 = J.f3079a;
                view2.offsetTopAndBottom(top);
            }
            if (left != 0 || top != 0) {
                this.f1601q.g(this.f1602r, currX, currY);
            }
            if (computeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                this.f1604t.post(this.f1605u);
            }
        }
        return this.f1585a == 2;
    }

    public final View h(int i4, int i5) {
        ViewGroup viewGroup = this.f1604t;
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            this.f1601q.getClass();
            View childAt = viewGroup.getChildAt(childCount);
            if (i4 >= childAt.getLeft() && i4 < childAt.getRight() && i5 >= childAt.getTop() && i5 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean i(int r11, int r12, int r13, int r14) {
        /*
            r10 = this;
            android.view.View r0 = r10.f1602r
            int r2 = r0.getLeft()
            android.view.View r0 = r10.f1602r
            int r3 = r0.getTop()
            int r4 = r11 - r2
            int r5 = r12 - r3
            android.widget.OverScroller r1 = r10.f1600p
            r11 = 0
            if (r4 != 0) goto L1e
            if (r5 != 0) goto L1e
            r1.abortAnimation()
            r10.o(r11)
            return r11
        L1e:
            android.view.View r12 = r10.f1602r
            float r0 = r10.f1598n
            int r0 = (int) r0
            float r6 = r10.f1597m
            int r6 = (int) r6
            int r7 = java.lang.Math.abs(r13)
            if (r7 >= r0) goto L2e
            r13 = r11
            goto L35
        L2e:
            if (r7 <= r6) goto L35
            if (r13 <= 0) goto L34
            r13 = r6
            goto L35
        L34:
            int r13 = -r6
        L35:
            int r7 = java.lang.Math.abs(r14)
            if (r7 >= r0) goto L3c
            goto L43
        L3c:
            if (r7 <= r6) goto L44
            if (r14 <= 0) goto L42
            r14 = r6
            goto L44
        L42:
            int r11 = -r6
        L43:
            r14 = r11
        L44:
            int r11 = java.lang.Math.abs(r4)
            int r0 = java.lang.Math.abs(r5)
            int r6 = java.lang.Math.abs(r13)
            int r7 = java.lang.Math.abs(r14)
            int r8 = r6 + r7
            int r9 = r11 + r0
            if (r13 == 0) goto L5d
            float r11 = (float) r6
            float r6 = (float) r8
            goto L5f
        L5d:
            float r11 = (float) r11
            float r6 = (float) r9
        L5f:
            float r11 = r11 / r6
            if (r14 == 0) goto L65
            float r0 = (float) r7
            float r6 = (float) r8
            goto L67
        L65:
            float r0 = (float) r0
            float r6 = (float) r9
        L67:
            float r0 = r0 / r6
            Q.h r6 = r10.f1601q
            int r12 = r6.c(r12)
            int r12 = r10.f(r4, r13, r12)
            int r13 = r6.d()
            int r13 = r10.f(r5, r14, r13)
            float r12 = (float) r12
            float r12 = r12 * r11
            float r11 = (float) r13
            float r11 = r11 * r0
            float r11 = r11 + r12
            int r6 = (int) r11
            r1.startScroll(r2, r3, r4, r5, r6)
            r11 = 2
            r10.o(r11)
            r10 = 1
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: Q.i.i(int, int, int, int):boolean");
    }

    public final void j(MotionEvent motionEvent) {
        int findPointerIndex;
        int i4;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f1596l == null) {
            this.f1596l = VelocityTracker.obtain();
        }
        this.f1596l.addMovement(motionEvent);
        h hVar = this.f1601q;
        if (actionMasked == 0) {
            float x4 = motionEvent.getX();
            float y4 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View h4 = h((int) x4, (int) y4);
            m(x4, y4, pointerId);
            r(h4, pointerId);
            if ((this.f1592h[pointerId] & 0) != 0) {
                hVar.getClass();
            }
        } else if (actionMasked == 1) {
            if (this.f1585a == 1) {
                k();
            }
            a();
        } else if (actionMasked == 2) {
            if (this.f1585a == 1) {
                int i5 = this.f1587c;
                if (((this.f1595k & (1 << i5)) != 0 ? 1 : 0) == 0 || (findPointerIndex = motionEvent.findPointerIndex(i5)) == -1) {
                    return;
                }
                float x5 = motionEvent.getX(findPointerIndex);
                float y5 = motionEvent.getY(findPointerIndex);
                float[] fArr = this.f1590f;
                int i6 = this.f1587c;
                int i7 = (int) (x5 - fArr[i6]);
                int i8 = (int) (y5 - this.f1591g[i6]);
                int left = this.f1602r.getLeft() + i7;
                int top = this.f1602r.getTop() + i8;
                int left2 = this.f1602r.getLeft();
                int top2 = this.f1602r.getTop();
                if (i7 != 0) {
                    left = hVar.a(left, this.f1602r);
                    WeakHashMap weakHashMap = J.f3079a;
                    this.f1602r.offsetLeftAndRight(left - left2);
                }
                if (i8 != 0) {
                    top = hVar.b(top, this.f1602r);
                    WeakHashMap weakHashMap2 = J.f3079a;
                    this.f1602r.offsetTopAndBottom(top - top2);
                }
                if (i7 != 0 || i8 != 0) {
                    hVar.g(this.f1602r, left, top);
                }
            } else {
                int pointerCount = motionEvent.getPointerCount();
                for (int i9 = 0; i9 < pointerCount; i9++) {
                    int pointerId2 = motionEvent.getPointerId(i9);
                    if ((this.f1595k & (1 << pointerId2)) != 0) {
                        float x6 = motionEvent.getX(i9);
                        float y6 = motionEvent.getY(i9);
                        float f4 = x6 - this.f1588d[pointerId2];
                        float f5 = y6 - this.f1589e[pointerId2];
                        l(f4, f5, pointerId2);
                        if (this.f1585a == 1) {
                            break;
                        }
                        View h5 = h((int) x6, (int) y6);
                        if (d(h5, f4, f5) && r(h5, pointerId2)) {
                            break;
                        }
                    }
                }
            }
            n(motionEvent);
        } else if (actionMasked == 3) {
            if (this.f1585a == 1) {
                this.f1603s = true;
                hVar.h(this.f1602r, 0.0f, 0.0f);
                this.f1603s = false;
                if (this.f1585a == 1) {
                    o(0);
                }
            }
            a();
        } else if (actionMasked != 5) {
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.f1585a == 1 && pointerId3 == this.f1587c) {
                int pointerCount2 = motionEvent.getPointerCount();
                while (true) {
                    if (r3 >= pointerCount2) {
                        i4 = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(r3);
                    if (pointerId4 != this.f1587c) {
                        View h6 = h((int) motionEvent.getX(r3), (int) motionEvent.getY(r3));
                        View view = this.f1602r;
                        if (h6 == view && r(view, pointerId4)) {
                            i4 = this.f1587c;
                            break;
                        }
                    }
                    r3++;
                }
                if (i4 == -1) {
                    k();
                }
            }
            e(pointerId3);
        } else {
            int pointerId5 = motionEvent.getPointerId(actionIndex);
            float x7 = motionEvent.getX(actionIndex);
            float y7 = motionEvent.getY(actionIndex);
            m(x7, y7, pointerId5);
            if (this.f1585a == 0) {
                r(h((int) x7, (int) y7), pointerId5);
                if ((this.f1592h[pointerId5] & 0) != 0) {
                    hVar.getClass();
                    return;
                }
                return;
            }
            int i10 = (int) x7;
            int i11 = (int) y7;
            View view2 = this.f1602r;
            if (view2 != null && i10 >= view2.getLeft() && i10 < view2.getRight() && i11 >= view2.getTop() && i11 < view2.getBottom()) {
                r3 = 1;
            }
            if (r3 != 0) {
                r(this.f1602r, pointerId5);
            }
        }
    }

    public final void k() {
        VelocityTracker velocityTracker = this.f1596l;
        float f4 = this.f1597m;
        velocityTracker.computeCurrentVelocity(1000, f4);
        float xVelocity = this.f1596l.getXVelocity(this.f1587c);
        float abs = Math.abs(xVelocity);
        float f5 = this.f1598n;
        float f6 = 0.0f;
        if (abs < f5) {
            xVelocity = 0.0f;
        } else if (abs > f4) {
            xVelocity = xVelocity > 0.0f ? f4 : -f4;
        }
        float yVelocity = this.f1596l.getYVelocity(this.f1587c);
        float abs2 = Math.abs(yVelocity);
        if (abs2 >= f5) {
            if (abs2 > f4) {
                if (yVelocity <= 0.0f) {
                    f4 = -f4;
                }
                f6 = f4;
            } else {
                f6 = yVelocity;
            }
        }
        this.f1603s = true;
        this.f1601q.h(this.f1602r, xVelocity, f6);
        this.f1603s = false;
        if (this.f1585a == 1) {
            o(0);
        }
    }

    public final void l(float f4, float f5, int i4) {
        boolean c4 = c(i4, f4, f5, 1);
        if (c(i4, f5, f4, 4)) {
            c4 |= true;
        }
        if (c(i4, f4, f5, 2)) {
            c4 |= true;
        }
        if (c(i4, f5, f4, 8)) {
            c4 |= true;
        }
        if (c4) {
            int[] iArr = this.f1593i;
            iArr[i4] = iArr[i4] | c4;
            this.f1601q.getClass();
        }
    }

    public final void m(float f4, float f5, int i4) {
        float[] fArr = this.f1588d;
        if (fArr == null || fArr.length <= i4) {
            int i5 = i4 + 1;
            float[] fArr2 = new float[i5];
            float[] fArr3 = new float[i5];
            float[] fArr4 = new float[i5];
            float[] fArr5 = new float[i5];
            int[] iArr = new int[i5];
            int[] iArr2 = new int[i5];
            int[] iArr3 = new int[i5];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f1589e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f1590f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f1591g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f1592h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f1593i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f1594j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f1588d = fArr2;
            this.f1589e = fArr3;
            this.f1590f = fArr4;
            this.f1591g = fArr5;
            this.f1592h = iArr;
            this.f1593i = iArr2;
            this.f1594j = iArr3;
        }
        float[] fArr9 = this.f1588d;
        this.f1590f[i4] = f4;
        fArr9[i4] = f4;
        float[] fArr10 = this.f1589e;
        this.f1591g[i4] = f5;
        fArr10[i4] = f5;
        int[] iArr7 = this.f1592h;
        int i6 = (int) f4;
        int i7 = (int) f5;
        ViewGroup viewGroup = this.f1604t;
        int left = viewGroup.getLeft();
        int i8 = this.f1599o;
        int i9 = i6 < left + i8 ? 1 : 0;
        if (i7 < viewGroup.getTop() + i8) {
            i9 |= 4;
        }
        if (i6 > viewGroup.getRight() - i8) {
            i9 |= 2;
        }
        if (i7 > viewGroup.getBottom() - i8) {
            i9 |= 8;
        }
        iArr7[i4] = i9;
        this.f1595k |= 1 << i4;
    }

    public final void n(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i4 = 0; i4 < pointerCount; i4++) {
            int pointerId = motionEvent.getPointerId(i4);
            if ((this.f1595k & (1 << pointerId)) != 0) {
                float x4 = motionEvent.getX(i4);
                float y4 = motionEvent.getY(i4);
                this.f1590f[pointerId] = x4;
                this.f1591g[pointerId] = y4;
            }
        }
    }

    public final void o(int i4) {
        this.f1604t.removeCallbacks(this.f1605u);
        if (this.f1585a != i4) {
            this.f1585a = i4;
            this.f1601q.f(i4);
            if (this.f1585a == 0) {
                this.f1602r = null;
            }
        }
    }

    public final boolean p(int i4, int i5) {
        if (this.f1603s) {
            return i(i4, i5, (int) this.f1596l.getXVelocity(this.f1587c), (int) this.f1596l.getYVelocity(this.f1587c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d1, code lost:
        if (r13 != r12) goto L55;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean q(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Q.i.q(android.view.MotionEvent):boolean");
    }

    public final boolean r(View view, int i4) {
        if (view == this.f1602r && this.f1587c == i4) {
            return true;
        }
        if (view == null || !this.f1601q.i(view, i4)) {
            return false;
        }
        this.f1587c = i4;
        b(view, i4);
        return true;
    }
}
