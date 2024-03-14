package f0;

import android.widget.TextView;
import androidx.slice.widget.RemoteInputView;
/* renamed from: f0.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0847n implements TextView.OnEditorActionListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ RemoteInputView f9200d;

    public C0847n(RemoteInputView remoteInputView) {
        this.f9200d = remoteInputView;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0046  */
    @Override // android.widget.TextView.OnEditorActionListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onEditorAction(android.widget.TextView r4, int r5, android.view.KeyEvent r6) {
        /*
            r3 = this;
            r4 = 1
            r0 = 0
            if (r6 != 0) goto Lf
            r1 = 6
            if (r5 == r1) goto Ld
            r1 = 5
            if (r5 == r1) goto Ld
            r1 = 4
            if (r5 != r1) goto Lf
        Ld:
            r5 = r4
            goto L10
        Lf:
            r5 = r0
        L10:
            if (r6 == 0) goto L35
            int r1 = r6.getKeyCode()
            java.lang.Object r2 = androidx.slice.widget.RemoteInputView.f4107k
            r2 = 23
            if (r1 == r2) goto L2a
            r2 = 62
            if (r1 == r2) goto L2a
            r2 = 66
            if (r1 == r2) goto L2a
            r2 = 160(0xa0, float:2.24E-43)
            if (r1 == r2) goto L2a
            r1 = r0
            goto L2b
        L2a:
            r1 = r4
        L2b:
            if (r1 == 0) goto L35
            int r6 = r6.getAction()
            if (r6 != 0) goto L35
            r6 = r4
            goto L36
        L35:
            r6 = r0
        L36:
            if (r5 != 0) goto L3c
            if (r6 == 0) goto L3b
            goto L3c
        L3b:
            return r0
        L3c:
            androidx.slice.widget.RemoteInputView r5 = r3.f9200d
            androidx.slice.widget.RemoteInputView$RemoteEditText r5 = r5.f4108d
            int r5 = r5.length()
            if (r5 <= 0) goto L4b
            androidx.slice.widget.RemoteInputView r3 = r3.f9200d
            r3.b()
        L4b:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.C0847n.onEditorAction(android.widget.TextView, int, android.view.KeyEvent):boolean");
    }
}
