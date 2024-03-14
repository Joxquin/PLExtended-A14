package R;

import android.text.Editable;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.TextView;
/* loaded from: classes.dex */
public final class f extends InputConnectionWrapper {

    /* renamed from: a  reason: collision with root package name */
    public final TextView f1621a;

    /* renamed from: b  reason: collision with root package name */
    public final e f1622b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(TextView textView, InputConnection inputConnection) {
        super(inputConnection, false);
        e eVar = new e();
        this.f1621a = textView;
        this.f1622b = eVar;
        Object obj = androidx.emoji2.text.b.f3224a;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i4, int i5) {
        e eVar = this.f1622b;
        Editable editableText = this.f1621a.getEditableText();
        eVar.getClass();
        return e.a(this, editableText, i4, i5, false) || super.deleteSurroundingText(i4, i5);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i4, int i5) {
        e eVar = this.f1622b;
        Editable editableText = this.f1621a.getEditableText();
        eVar.getClass();
        return e.a(this, editableText, i4, i5, true) || super.deleteSurroundingTextInCodePoints(i4, i5);
    }
}
