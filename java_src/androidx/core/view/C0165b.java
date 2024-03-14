package androidx.core.view;

import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeProvider;
import com.android.systemui.shared.R;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.core.view.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0165b {
    private static final View.AccessibilityDelegate DEFAULT_DELEGATE = new View.AccessibilityDelegate();
    private final C0164a mBridge;
    private final View.AccessibilityDelegate mOriginalDelegate;

    public C0165b() {
        this(DEFAULT_DELEGATE);
    }

    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.mOriginalDelegate.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public M.i getAccessibilityNodeProvider(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = this.mOriginalDelegate.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new M.i(accessibilityNodeProvider);
        }
        return null;
    }

    public final C0164a getBridge() {
        return this.mBridge;
    }

    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.mOriginalDelegate.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, eVar.f1349a);
    }

    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.mOriginalDelegate.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.mOriginalDelegate.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
        boolean z4;
        WeakReference weakReference;
        boolean z5;
        List list = (List) view.getTag(R.id.tag_accessibility_actions);
        if (list == null) {
            list = Collections.emptyList();
        }
        boolean z6 = false;
        int i5 = 0;
        while (true) {
            if (i5 >= list.size()) {
                break;
            }
            M.c cVar = (M.c) list.get(i5);
            if (cVar.a() == i4) {
                M.r rVar = cVar.f1347d;
                if (rVar != null) {
                    Class cls = cVar.f1346c;
                    if (cls != null) {
                        try {
                            ((M.j) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0])).getClass();
                        } catch (Exception e4) {
                            Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: ".concat(cls.getName()), e4);
                        }
                    }
                    z4 = rVar.a(view);
                }
            } else {
                i5++;
            }
        }
        z4 = false;
        if (!z4) {
            z4 = this.mOriginalDelegate.performAccessibilityAction(view, i4, bundle);
        }
        if (z4 || i4 != R.id.accessibility_action_clickable_span || bundle == null) {
            return z4;
        }
        int i6 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
        if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i6)) != null) {
            ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
            if (clickableSpan != null) {
                CharSequence text = view.createAccessibilityNodeInfo().getText();
                ClickableSpan[] clickableSpanArr = text instanceof Spanned ? (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class) : null;
                for (int i7 = 0; clickableSpanArr != null && i7 < clickableSpanArr.length; i7++) {
                    if (clickableSpan.equals(clickableSpanArr[i7])) {
                        z5 = true;
                        break;
                    }
                }
            }
            z5 = false;
            if (z5) {
                clickableSpan.onClick(view);
                z6 = true;
            }
        }
        return z6;
    }

    public void sendAccessibilityEvent(View view, int i4) {
        this.mOriginalDelegate.sendAccessibilityEvent(view, i4);
    }

    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.mOriginalDelegate.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public C0165b(View.AccessibilityDelegate accessibilityDelegate) {
        this.mOriginalDelegate = accessibilityDelegate;
        this.mBridge = new C0164a(this);
    }
}
