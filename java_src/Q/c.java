package Q;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.C0165b;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public abstract class c extends C0165b {
    private static final Rect INVALID_BOUNDS = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    private static final a NODE_ADAPTER = new a();
    private static final a SPARSE_VALUES_ADAPTER = new a();
    private final View mHost;
    private final AccessibilityManager mManager;
    private b mNodeProvider;
    private final Rect mTempScreenRect = new Rect();
    private final Rect mTempParentRect = new Rect();
    private final Rect mTempVisibleRect = new Rect();
    private final int[] mTempGlobalRect = new int[2];
    int mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
    int mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
    private int mHoveredVirtualViewId = Integer.MIN_VALUE;

    public c(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.mHost = view;
        this.mManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        WeakHashMap weakHashMap = J.f3079a;
        if (C0186x.b(view) == 0) {
            C0186x.o(view, 1);
        }
    }

    private M.e createNodeForChild(int i4) {
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
        M.e eVar = new M.e(obtain);
        obtain.setEnabled(true);
        obtain.setFocusable(true);
        eVar.h("android.view.View");
        Rect rect = INVALID_BOUNDS;
        eVar.g(rect);
        obtain.setBoundsInScreen(rect);
        eVar.f1350b = -1;
        View view = this.mHost;
        obtain.setParent(view);
        onPopulateNodeForVirtualView(i4, eVar);
        if (eVar.f() == null && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        Rect rect2 = this.mTempParentRect;
        obtain.getBoundsInParent(rect2);
        Rect rect3 = this.mTempScreenRect;
        eVar.e(rect3);
        if (rect2.equals(rect) && rect3.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds or screen bounds in populateNodeForVirtualViewId()");
        }
        int actions = obtain.getActions();
        if ((actions & 64) == 0) {
            if ((actions & 128) == 0) {
                obtain.setPackageName(view.getContext().getPackageName());
                eVar.f1351c = i4;
                obtain.setSource(view, i4);
                boolean z4 = false;
                if (this.mAccessibilityFocusedVirtualViewId == i4) {
                    obtain.setAccessibilityFocused(true);
                    eVar.a(128);
                } else {
                    obtain.setAccessibilityFocused(false);
                    eVar.a(64);
                }
                boolean z5 = this.mKeyboardFocusedVirtualViewId == i4;
                if (z5) {
                    eVar.a(2);
                } else if (obtain.isFocusable()) {
                    eVar.a(1);
                }
                obtain.setFocused(z5);
                int[] iArr = this.mTempGlobalRect;
                view.getLocationOnScreen(iArr);
                boolean equals = rect3.equals(rect);
                AccessibilityNodeInfo accessibilityNodeInfo = eVar.f1349a;
                if (equals) {
                    eVar.g(rect2);
                    Rect rect4 = new Rect();
                    rect4.set(rect2);
                    if (eVar.f1350b != -1) {
                        M.e eVar2 = new M.e(AccessibilityNodeInfo.obtain());
                        Rect rect5 = new Rect();
                        for (int i5 = eVar.f1350b; i5 != -1; i5 = eVar2.f1350b) {
                            eVar2.f1350b = -1;
                            AccessibilityNodeInfo accessibilityNodeInfo2 = eVar2.f1349a;
                            accessibilityNodeInfo2.setParent(view, -1);
                            eVar2.g(rect);
                            onPopulateNodeForVirtualView(i5, eVar2);
                            accessibilityNodeInfo2.getBoundsInParent(rect5);
                            rect4.offset(rect5.left, rect5.top);
                        }
                    }
                    view.getLocationOnScreen(iArr);
                    rect4.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
                    accessibilityNodeInfo.setBoundsInScreen(rect4);
                    eVar.e(rect3);
                }
                Rect rect6 = this.mTempVisibleRect;
                if (view.getLocalVisibleRect(rect6)) {
                    rect6.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
                    if (rect3.intersect(rect6)) {
                        accessibilityNodeInfo.setBoundsInScreen(rect3);
                        if (!rect3.isEmpty() && view.getWindowVisibility() == 0) {
                            ViewParent parent = view.getParent();
                            while (true) {
                                if (parent instanceof View) {
                                    View view2 = (View) parent;
                                    if (view2.getAlpha() <= 0.0f || view2.getVisibility() != 0) {
                                        break;
                                    }
                                    parent = view2.getParent();
                                } else if (parent != null) {
                                    z4 = true;
                                }
                            }
                        }
                        if (z4) {
                            obtain.setVisibleToUser(true);
                        }
                    }
                }
                return eVar;
            }
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0144, code lost:
        if (r14 < ((r15 * r15) + ((r13 * 13) * r13))) goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0150 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x014b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean moveFocus(int r19, android.graphics.Rect r20) {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Q.c.moveFocus(int, android.graphics.Rect):boolean");
    }

    public final boolean clearKeyboardFocusForVirtualView(int i4) {
        if (this.mKeyboardFocusedVirtualViewId != i4) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
        onVirtualViewKeyboardFocusChanged(i4, false);
        sendEventForVirtualView(i4, 8);
        return true;
    }

    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int i4;
        AccessibilityManager accessibilityManager = this.mManager;
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action == 7 || action == 9) {
                int virtualViewAt = getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
                int i5 = this.mHoveredVirtualViewId;
                if (i5 != virtualViewAt) {
                    this.mHoveredVirtualViewId = virtualViewAt;
                    sendEventForVirtualView(virtualViewAt, 128);
                    sendEventForVirtualView(i5, 256);
                }
                return virtualViewAt != Integer.MIN_VALUE;
            } else if (action == 10 && (i4 = this.mHoveredVirtualViewId) != Integer.MIN_VALUE) {
                if (i4 != Integer.MIN_VALUE) {
                    this.mHoveredVirtualViewId = Integer.MIN_VALUE;
                    sendEventForVirtualView(Integer.MIN_VALUE, 128);
                    sendEventForVirtualView(i4, 256);
                }
                return true;
            } else {
                return false;
            }
        }
        return false;
    }

    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int i4 = 0;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return moveFocus(2, null);
                }
                if (keyEvent.hasModifiers(1)) {
                    return moveFocus(1, null);
                }
                return false;
            }
            int i5 = 66;
            if (keyCode != 66) {
                switch (keyCode) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                        if (keyEvent.hasNoModifiers()) {
                            if (keyCode == 19) {
                                i5 = 33;
                            } else if (keyCode == 21) {
                                i5 = 17;
                            } else if (keyCode != 22) {
                                i5 = 130;
                            }
                            int repeatCount = keyEvent.getRepeatCount() + 1;
                            boolean z4 = false;
                            while (i4 < repeatCount && moveFocus(i5, null)) {
                                i4++;
                                z4 = true;
                            }
                            return z4;
                        }
                        return false;
                    case 23:
                        break;
                    default:
                        return false;
                }
            }
            if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                int i6 = this.mKeyboardFocusedVirtualViewId;
                if (i6 != Integer.MIN_VALUE) {
                    onPerformActionForVirtualView(i6, 16);
                }
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // androidx.core.view.C0165b
    public final M.i getAccessibilityNodeProvider(View view) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new b(this);
        }
        return this.mNodeProvider;
    }

    @Deprecated
    public final int getFocusedVirtualView() {
        return this.mAccessibilityFocusedVirtualViewId;
    }

    public abstract int getVirtualViewAt(float f4, float f5);

    public abstract void getVisibleVirtualViews(List list);

    public final M.e obtainAccessibilityNodeInfo(int i4) {
        if (i4 == -1) {
            View view = this.mHost;
            AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(view);
            M.e eVar = new M.e(obtain);
            WeakHashMap weakHashMap = J.f3079a;
            view.onInitializeAccessibilityNodeInfo(obtain);
            ArrayList arrayList = new ArrayList();
            getVisibleVirtualViews(arrayList);
            if (obtain.getChildCount() <= 0 || arrayList.size() <= 0) {
                int size = arrayList.size();
                for (int i5 = 0; i5 < size; i5++) {
                    eVar.f1349a.addChild(view, ((Integer) arrayList.get(i5)).intValue());
                }
                return eVar;
            }
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        return createNodeForChild(i4);
    }

    public final void onFocusChanged(boolean z4, int i4, Rect rect) {
        int i5 = this.mKeyboardFocusedVirtualViewId;
        if (i5 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i5);
        }
        if (z4) {
            moveFocus(i4, rect);
        }
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        super.onInitializeAccessibilityNodeInfo(view, eVar);
        onPopulateNodeForHost(eVar);
    }

    public abstract boolean onPerformActionForVirtualView(int i4, int i5);

    public void onPopulateEventForVirtualView(AccessibilityEvent accessibilityEvent, int i4) {
    }

    public void onPopulateNodeForHost(M.e eVar) {
    }

    public abstract void onPopulateNodeForVirtualView(int i4, M.e eVar);

    public void onVirtualViewKeyboardFocusChanged(int i4, boolean z4) {
    }

    public final boolean performAction(int i4, int i5, Bundle bundle) {
        int i6;
        View view = this.mHost;
        if (i4 == -1) {
            WeakHashMap weakHashMap = J.f3079a;
            return C0186x.h(view, i5, bundle);
        }
        boolean z4 = true;
        if (i5 != 1) {
            if (i5 != 2) {
                if (i5 == 64) {
                    AccessibilityManager accessibilityManager = this.mManager;
                    if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled() && (i6 = this.mAccessibilityFocusedVirtualViewId) != i4) {
                        if (i6 != Integer.MIN_VALUE) {
                            this.mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
                            view.invalidate();
                            sendEventForVirtualView(i6, 65536);
                        }
                        this.mAccessibilityFocusedVirtualViewId = i4;
                        view.invalidate();
                        sendEventForVirtualView(i4, 32768);
                    }
                    z4 = false;
                } else if (i5 != 128) {
                    return onPerformActionForVirtualView(i4, i5);
                } else {
                    if (this.mAccessibilityFocusedVirtualViewId == i4) {
                        this.mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
                        view.invalidate();
                        sendEventForVirtualView(i4, 65536);
                    }
                    z4 = false;
                }
                return z4;
            }
            return clearKeyboardFocusForVirtualView(i4);
        }
        return requestKeyboardFocusForVirtualView(i4);
    }

    public final boolean requestKeyboardFocusForVirtualView(int i4) {
        int i5;
        View view = this.mHost;
        if ((view.isFocused() || view.requestFocus()) && (i5 = this.mKeyboardFocusedVirtualViewId) != i4) {
            if (i5 != Integer.MIN_VALUE) {
                clearKeyboardFocusForVirtualView(i5);
            }
            if (i4 == Integer.MIN_VALUE) {
                return false;
            }
            this.mKeyboardFocusedVirtualViewId = i4;
            onVirtualViewKeyboardFocusChanged(i4, true);
            sendEventForVirtualView(i4, 8);
            return true;
        }
        return false;
    }

    public final void sendEventForVirtualView(int i4, int i5) {
        View view;
        ViewParent parent;
        AccessibilityEvent obtain;
        if (i4 == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = (view = this.mHost).getParent()) == null) {
            return;
        }
        if (i4 != -1) {
            obtain = AccessibilityEvent.obtain(i5);
            M.e obtainAccessibilityNodeInfo = obtainAccessibilityNodeInfo(i4);
            obtain.getText().add(obtainAccessibilityNodeInfo.f());
            AccessibilityNodeInfo accessibilityNodeInfo = obtainAccessibilityNodeInfo.f1349a;
            obtain.setContentDescription(accessibilityNodeInfo.getContentDescription());
            obtain.setScrollable(accessibilityNodeInfo.isScrollable());
            obtain.setPassword(accessibilityNodeInfo.isPassword());
            obtain.setEnabled(accessibilityNodeInfo.isEnabled());
            obtain.setChecked(accessibilityNodeInfo.isChecked());
            onPopulateEventForVirtualView(obtain, i4);
            if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
                throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            }
            obtain.setClassName(accessibilityNodeInfo.getClassName());
            obtain.setSource(view, i4);
            obtain.setPackageName(view.getContext().getPackageName());
        } else {
            obtain = AccessibilityEvent.obtain(i5);
            view.onInitializeAccessibilityEvent(obtain);
        }
        parent.requestSendAccessibilityEvent(view, obtain);
    }
}
