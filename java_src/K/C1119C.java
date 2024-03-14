package k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import com.android.systemui.shared.R;
/* renamed from: k.C  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1119C extends EditText {

    /* renamed from: d  reason: collision with root package name */
    public final C1162t f10723d;

    /* renamed from: e  reason: collision with root package name */
    public final C1134e0 f10724e;

    /* renamed from: f  reason: collision with root package name */
    public final C1120D f10725f;

    /* renamed from: g  reason: collision with root package name */
    public C1118B f10726g;

    public C1119C(Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C1162t c1162t = this.f10723d;
        if (c1162t != null) {
            c1162t.a();
        }
        C1134e0 c1134e0 = this.f10724e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final ActionMode.Callback getCustomSelectionActionModeCallback() {
        return N.i.b(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public final TextClassifier getTextClassifier() {
        if (this.f10726g == null) {
            this.f10726g = new C1118B(this);
        }
        return super.getTextClassifier();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f10724e.getClass();
        C1122F.a(this, editorInfo, onCreateInputConnection);
        return this.f10725f.c(onCreateInputConnection);
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.TextView
    public final boolean onTextContextMenuItem(int i4) {
        return super.onTextContextMenuItem(i4);
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1162t c1162t = this.f10723d;
        if (c1162t != null) {
            c1162t.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i4) {
        super.setBackgroundResource(i4);
        C1162t c1162t = this.f10723d;
        if (c1162t != null) {
            c1162t.f(i4);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f10724e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C1134e0 c1134e0 = this.f10724e;
        if (c1134e0 != null) {
            c1134e0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    @Override // android.widget.TextView
    public final void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f10725f.a(keyListener));
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i4) {
        super.setTextAppearance(context, i4);
        C1134e0 c1134e0 = this.f10724e;
        if (c1134e0 != null) {
            c1134e0.e(i4, context);
        }
    }

    @Override // android.widget.TextView
    public final void setTextClassifier(TextClassifier textClassifier) {
        if (this.f10726g == null) {
            this.f10726g = new C1118B(this);
        }
        super.setTextClassifier(textClassifier);
    }

    public C1119C(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public final Editable getText() {
        return super.getText();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1119C(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        O0.a(context);
        M0.a(this, getContext());
        C1162t c1162t = new C1162t(this);
        this.f10723d = c1162t;
        c1162t.d(attributeSet, i4);
        C1134e0 c1134e0 = new C1134e0(this);
        this.f10724e = c1134e0;
        c1134e0.d(attributeSet, i4);
        c1134e0.b();
        C1120D c1120d = new C1120D(this);
        this.f10725f = c1120d;
        c1120d.b(attributeSet, i4);
        KeyListener keyListener = getKeyListener();
        if (!(keyListener instanceof NumberKeyListener)) {
            boolean isFocusable = super.isFocusable();
            boolean isClickable = super.isClickable();
            boolean isLongClickable = super.isLongClickable();
            int inputType = super.getInputType();
            KeyListener a4 = c1120d.a(keyListener);
            if (a4 == keyListener) {
                return;
            }
            super.setKeyListener(a4);
            super.setRawInputType(inputType);
            super.setFocusable(isFocusable);
            super.setClickable(isClickable);
            super.setLongClickable(isLongClickable);
        }
    }
}
