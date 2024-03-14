package M;

import android.view.accessibility.AccessibilityNodeInfo;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: e  reason: collision with root package name */
    public static final c f1334e;

    /* renamed from: f  reason: collision with root package name */
    public static final c f1335f;

    /* renamed from: g  reason: collision with root package name */
    public static final c f1336g;

    /* renamed from: h  reason: collision with root package name */
    public static final c f1337h;

    /* renamed from: i  reason: collision with root package name */
    public static final c f1338i;

    /* renamed from: j  reason: collision with root package name */
    public static final c f1339j;

    /* renamed from: k  reason: collision with root package name */
    public static final c f1340k;

    /* renamed from: l  reason: collision with root package name */
    public static final c f1341l;

    /* renamed from: m  reason: collision with root package name */
    public static final c f1342m;

    /* renamed from: n  reason: collision with root package name */
    public static final c f1343n;

    /* renamed from: a  reason: collision with root package name */
    public final Object f1344a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1345b;

    /* renamed from: c  reason: collision with root package name */
    public final Class f1346c;

    /* renamed from: d  reason: collision with root package name */
    public final r f1347d;

    static {
        new c(1, (CharSequence) null);
        new c(2, (CharSequence) null);
        new c(4, (CharSequence) null);
        new c(8, (CharSequence) null);
        f1334e = new c(16, (CharSequence) null);
        new c(32, (CharSequence) null);
        new c(64, (CharSequence) null);
        new c(128, (CharSequence) null);
        new c(256, k.class);
        new c(512, k.class);
        new c(1024, l.class);
        new c(2048, l.class);
        f1335f = new c(4096, (CharSequence) null);
        f1336g = new c(8192, (CharSequence) null);
        new c(16384, (CharSequence) null);
        new c(32768, (CharSequence) null);
        new c(65536, (CharSequence) null);
        new c(131072, p.class);
        f1337h = new c(262144, (CharSequence) null);
        f1338i = new c(524288, (CharSequence) null);
        f1339j = new c(1048576, (CharSequence) null);
        new c(2097152, q.class);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, 16908342, null, null, null);
        f1340k = new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, 16908343, null, null, n.class);
        f1341l = new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, 16908344, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, 16908345, null, null, null);
        f1342m = new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, 16908346, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, 16908347, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP, 16908358, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN, 16908359, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT, 16908360, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT, 16908361, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, 16908348, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS, 16908349, null, null, o.class);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW, 16908354, null, null, m.class);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP, 16908356, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP, 16908357, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD, 16908362, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER, 16908372, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START, 16908373, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP, 16908374, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL, 16908375, null, null, null);
        new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS, 16908376, null, null, null);
        int i4 = I.b.f550a;
        f1343n = new c(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_IN_DIRECTION, 16908382, null, null, null);
    }

    public c(int i4, CharSequence charSequence) {
        this(null, i4, charSequence, null, null);
    }

    public final int a() {
        return ((AccessibilityNodeInfo.AccessibilityAction) this.f1344a).getId();
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof c)) {
            Object obj2 = ((c) obj).f1344a;
            Object obj3 = this.f1344a;
            return obj3 == null ? obj2 == null : obj3.equals(obj2);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f1344a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AccessibilityActionCompat: ");
        String d4 = e.d(this.f1345b);
        if (d4.equals("ACTION_UNKNOWN")) {
            Object obj = this.f1344a;
            if (((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel() != null) {
                d4 = ((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel().toString();
            }
        }
        sb.append(d4);
        return sb.toString();
    }

    public c(int i4, Class cls) {
        this(null, i4, null, null, cls);
    }

    public c(Object obj, int i4, CharSequence charSequence, r rVar, Class cls) {
        this.f1345b = i4;
        this.f1347d = rVar;
        if (obj == null) {
            this.f1344a = new AccessibilityNodeInfo.AccessibilityAction(i4, charSequence);
        } else {
            this.f1344a = obj;
        }
        this.f1346c = cls;
    }
}
