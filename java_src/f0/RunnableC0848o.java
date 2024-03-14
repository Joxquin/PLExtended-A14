package f0;

import android.view.inputmethod.InputMethodManager;
import androidx.slice.widget.RemoteInputView;
/* renamed from: f0.o  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0848o implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ InputMethodManager f9201d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RemoteInputView.RemoteEditText f9202e;

    public RunnableC0848o(RemoteInputView.RemoteEditText remoteEditText, InputMethodManager inputMethodManager) {
        this.f9202e = remoteEditText;
        this.f9201d = inputMethodManager;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9201d.viewClicked(this.f9202e);
        this.f9201d.showSoftInput(this.f9202e, 0);
    }
}
