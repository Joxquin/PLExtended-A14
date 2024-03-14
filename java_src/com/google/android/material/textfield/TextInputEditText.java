package com.google.android.material.textfield;

import H2.a;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.android.systemui.shared.R;
import i2.C0980a;
import java.util.Locale;
import k.C1119C;
import x2.C1480r;
/* loaded from: classes.dex */
public class TextInputEditText extends C1119C {

    /* renamed from: h  reason: collision with root package name */
    public final Rect f8064h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f8065i;

    public TextInputEditText(Context context) {
        this(context, null);
    }

    public final TextInputLayout a() {
        for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        super.getFocusedRect(rect);
        TextInputLayout a4 = a();
        if (!(a4 != null && this.f8065i) || rect == null) {
            return;
        }
        a4.getFocusedRect(this.f8064h);
        rect.bottom = this.f8064h.bottom;
    }

    @Override // android.view.View
    public final boolean getGlobalVisibleRect(Rect rect, Point point) {
        TextInputLayout a4 = a();
        return a4 != null && this.f8065i ? a4.getGlobalVisibleRect(rect, point) : super.getGlobalVisibleRect(rect, point);
    }

    @Override // android.widget.TextView
    public final CharSequence getHint() {
        TextInputLayout a4 = a();
        if (a4 == null || !a4.f8072F) {
            return super.getHint();
        }
        if (a4.f8070D) {
            return a4.f8071E;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout a4 = a();
        if (a4 != null && a4.f8072F && super.getHint() == null && Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals("meizu")) {
            setHint("");
        }
    }

    @Override // k.C1119C, android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null && editorInfo.hintText == null) {
            TextInputLayout a4 = a();
            CharSequence charSequence = null;
            if (a4 != null && a4.f8070D) {
                charSequence = a4.f8071E;
            }
            editorInfo.hintText = charSequence;
        }
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        a();
    }

    @Override // android.view.View
    public final boolean requestRectangleOnScreen(Rect rect) {
        TextInputLayout a4 = a();
        if (!(a4 != null && this.f8065i) || rect == null) {
            return super.requestRectangleOnScreen(rect);
        }
        this.f8064h.set(rect.left, rect.top, rect.right, rect.bottom + (a4.getHeight() - getHeight()));
        return super.requestRectangleOnScreen(this.f8064h);
    }

    public TextInputEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
    }

    public TextInputEditText(Context context, AttributeSet attributeSet, int i4) {
        super(a.a(context, attributeSet, i4, 0), attributeSet, i4);
        this.f8064h = new Rect();
        TypedArray d4 = C1480r.d(context, attributeSet, C0980a.f9622B, i4, R.style.Widget_Design_TextInputEditText, new int[0]);
        this.f8065i = d4.getBoolean(0, false);
        d4.recycle();
    }
}
