package e;

import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import j.C1097o;
import java.util.List;
/* loaded from: classes.dex */
public final class x implements Window.Callback {

    /* renamed from: d  reason: collision with root package name */
    public final Window.Callback f8998d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f8999e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f9000f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f9001g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ LayoutInflater$Factory2C0803D f9002h;

    public x(LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D, Window.Callback callback) {
        this.f9002h = layoutInflater$Factory2C0803D;
        if (callback == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.f8998d = callback;
    }

    public final void a(Window.Callback callback) {
        try {
            this.f8999e = true;
            callback.onContentChanged();
        } finally {
            this.f8999e = false;
        }
    }

    @Override // android.view.Window.Callback
    /* renamed from: b */
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.f8998d.dispatchGenericMotionEvent(motionEvent);
    }

    public final boolean c(KeyEvent keyEvent) {
        return this.f8998d.dispatchKeyEvent(keyEvent);
    }

    public final boolean d(KeyEvent keyEvent) {
        return this.f8998d.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f9000f ? this.f8998d.dispatchKeyEvent(keyEvent) : this.f9002h.E(keyEvent) || c(keyEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0038, code lost:
        if (r0 != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0065, code lost:
        if (r5 != false) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    @Override // android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchKeyShortcutEvent(android.view.KeyEvent r6) {
        /*
            r5 = this;
            boolean r0 = r5.d(r6)
            r1 = 1
            if (r0 != 0) goto L6e
            e.D r5 = r5.f9002h
            int r0 = r6.getKeyCode()
            r5.L()
            e.T r2 = r5.f8830p
            r3 = 0
            if (r2 == 0) goto L3b
            e.S r2 = r2.f8888i
            if (r2 != 0) goto L1a
            goto L37
        L1a:
            j.o r2 = r2.f8874g
            if (r2 == 0) goto L37
            int r4 = r6.getDeviceId()
            android.view.KeyCharacterMap r4 = android.view.KeyCharacterMap.load(r4)
            int r4 = r4.getKeyboardType()
            if (r4 == r1) goto L2e
            r4 = r1
            goto L2f
        L2e:
            r4 = r3
        L2f:
            r2.setQwertyMode(r4)
            boolean r0 = r2.performShortcut(r0, r6, r3)
            goto L38
        L37:
            r0 = r3
        L38:
            if (r0 == 0) goto L3b
            goto L67
        L3b:
            e.C r0 = r5.f8804O
            if (r0 == 0) goto L50
            int r2 = r6.getKeyCode()
            boolean r0 = r5.P(r0, r2, r6)
            if (r0 == 0) goto L50
            e.C r5 = r5.f8804O
            if (r5 == 0) goto L67
            r5.f8781l = r1
            goto L67
        L50:
            e.C r0 = r5.f8804O
            if (r0 != 0) goto L69
            e.C r0 = r5.J(r3)
            r5.Q(r0, r6)
            int r2 = r6.getKeyCode()
            boolean r5 = r5.P(r0, r2, r6)
            r0.f8780k = r3
            if (r5 == 0) goto L69
        L67:
            r5 = r1
            goto L6a
        L69:
            r5 = r3
        L6a:
            if (r5 == 0) goto L6d
            goto L6e
        L6d:
            r1 = r3
        L6e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: e.x.dispatchKeyShortcutEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.Window.Callback
    /* renamed from: e */
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.f8998d.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    /* renamed from: f */
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.f8998d.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    /* renamed from: g */
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.f8998d.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    /* renamed from: h */
    public final void onActionModeFinished(ActionMode actionMode) {
        this.f8998d.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    /* renamed from: i */
    public final void onActionModeStarted(ActionMode actionMode) {
        this.f8998d.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    /* renamed from: j */
    public final void onAttachedToWindow() {
        this.f8998d.onAttachedToWindow();
    }

    public final boolean k(int i4, Menu menu) {
        return this.f8998d.onCreatePanelMenu(i4, menu);
    }

    public final View l(int i4) {
        return this.f8998d.onCreatePanelView(i4);
    }

    @Override // android.view.Window.Callback
    /* renamed from: m */
    public final void onDetachedFromWindow() {
        this.f8998d.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    /* renamed from: n */
    public final boolean onMenuItemSelected(int i4, MenuItem menuItem) {
        return this.f8998d.onMenuItemSelected(i4, menuItem);
    }

    public final boolean o(int i4, Menu menu) {
        return this.f8998d.onMenuOpened(i4, menu);
    }

    @Override // android.view.Window.Callback
    public final void onContentChanged() {
        if (this.f8999e) {
            this.f8998d.onContentChanged();
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i4, Menu menu) {
        if (i4 != 0 || (menu instanceof C1097o)) {
            return k(i4, menu);
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public final View onCreatePanelView(int i4) {
        return l(i4);
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuOpened(int i4, Menu menu) {
        o(i4, menu);
        LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D = this.f9002h;
        if (i4 == 108) {
            layoutInflater$Factory2C0803D.L();
            T t4 = layoutInflater$Factory2C0803D.f8830p;
            if (t4 != null) {
                t4.b(true);
            }
        } else {
            layoutInflater$Factory2C0803D.getClass();
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final void onPanelClosed(int i4, Menu menu) {
        if (this.f9001g) {
            this.f8998d.onPanelClosed(i4, menu);
            return;
        }
        p(i4, menu);
        LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D = this.f9002h;
        if (i4 == 108) {
            layoutInflater$Factory2C0803D.L();
            T t4 = layoutInflater$Factory2C0803D.f8830p;
            if (t4 != null) {
                t4.b(false);
            }
        } else if (i4 != 0) {
            layoutInflater$Factory2C0803D.getClass();
        } else {
            C0802C J3 = layoutInflater$Factory2C0803D.J(i4);
            if (J3.f8782m) {
                layoutInflater$Factory2C0803D.C(J3, false);
            }
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onPreparePanel(int i4, View view, Menu menu) {
        C1097o c1097o = menu instanceof C1097o ? (C1097o) menu : null;
        if (i4 == 0 && c1097o == null) {
            return false;
        }
        if (c1097o != null) {
            c1097o.f10588y = true;
        }
        boolean r4 = r(i4, view, menu);
        if (c1097o != null) {
            c1097o.f10588y = false;
        }
        return r4;
    }

    @Override // android.view.Window.Callback
    public final void onProvideKeyboardShortcuts(List list, Menu menu, int i4) {
        C1097o c1097o = this.f9002h.J(0).f8777h;
        if (c1097o != null) {
            s(list, c1097o, i4);
        } else {
            s(list, menu, i4);
        }
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return null;
    }

    public final void p(int i4, Menu menu) {
        this.f8998d.onPanelClosed(i4, menu);
    }

    @Override // android.view.Window.Callback
    /* renamed from: q */
    public final void onPointerCaptureChanged(boolean z4) {
        this.f8998d.onPointerCaptureChanged(z4);
    }

    public final boolean r(int i4, View view, Menu menu) {
        return this.f8998d.onPreparePanel(i4, view, menu);
    }

    public final void s(List list, Menu menu, int i4) {
        this.f8998d.onProvideKeyboardShortcuts(list, menu, i4);
    }

    @Override // android.view.Window.Callback
    /* renamed from: t */
    public final boolean onSearchRequested() {
        return this.f8998d.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    /* renamed from: u */
    public final boolean onSearchRequested(SearchEvent searchEvent) {
        return this.f8998d.onSearchRequested(searchEvent);
    }

    @Override // android.view.Window.Callback
    /* renamed from: v */
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.f8998d.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    /* renamed from: w */
    public final void onWindowFocusChanged(boolean z4) {
        this.f8998d.onWindowFocusChanged(z4);
    }

    public final ActionMode x(ActionMode.Callback callback, int i4) {
        return this.f8998d.onWindowStartingActionMode(callback, i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01ed  */
    @Override // android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback r8, int r9) {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.x.onWindowStartingActionMode(android.view.ActionMode$Callback, int):android.view.ActionMode");
    }
}
