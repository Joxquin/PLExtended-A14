package L1;

import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import android.view.textclassifier.TextSelection;
/* loaded from: classes.dex */
public final class s0 implements TextClassifier {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ u0 f1244a;

    public s0(u0 u0Var) {
        this.f1244a = u0Var;
    }

    @Override // android.view.textclassifier.TextClassifier
    public final TextClassification classifyText(TextClassification.Request request) {
        TextClassification build;
        u0 u0Var = this.f1244a;
        CharSequence text = request.getText();
        int startIndex = request.getStartIndex();
        int endIndex = request.getEndIndex();
        synchronized (u0Var) {
            TextClassification.Builder builder = new TextClassification.Builder();
            if (u0Var.f1250c.i(u0Var.f1260m)) {
                M1.b.c("Classify text: " + startIndex + "," + endIndex);
                J1.B b4 = u0Var.b(text, startIndex, endIndex);
                if (b4 != null) {
                    if (b4.f664l) {
                        builder.setEntityType("other", 0.8f);
                    }
                    u0Var.f1249b.post(new q0(u0Var, b4));
                }
                build = builder.setText(text.toString()).build();
            } else {
                build = builder.setText(text.toString()).build();
            }
        }
        return build;
    }

    @Override // android.view.textclassifier.TextClassifier
    public final TextSelection suggestSelection(TextSelection.Request request) {
        TextSelection build;
        u0 u0Var = this.f1244a;
        CharSequence text = request.getText();
        int startIndex = request.getStartIndex();
        int endIndex = request.getEndIndex();
        synchronized (u0Var) {
            M1.b.c("Text selection: " + ((Object) text) + ": " + startIndex + "," + endIndex);
            J1.B d4 = u0Var.d();
            if (d4 != null) {
                TextSelection.Builder builder = new TextSelection.Builder(startIndex, endIndex);
                if (d4.f664l) {
                    builder.setEntityType("other", 0.8f);
                }
                build = builder.build();
            } else {
                build = new TextSelection.Builder(startIndex, endIndex).build();
            }
        }
        return build;
    }
}
