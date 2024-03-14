package Y1;

import android.util.Log;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.SurroundingText;
import com.google.android.apps.nexuslauncher.search.SearchEditText;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public final class y extends InputConnectionWrapper {

    /* renamed from: a */
    public SurroundingText f2314a;

    /* renamed from: b */
    public int f2315b;

    /* renamed from: c */
    public final /* synthetic */ SearchEditText f2316c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(SearchEditText searchEditText, InputConnection inputConnection) {
        super(inputConnection, false);
        this.f2316c = searchEditText;
        h();
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean beginBatchEdit() {
        if (SearchEditText.f7565y) {
            Log.d("QuickLaunchV2", "beginBatchEdit");
        }
        h();
        this.f2315b++;
        return super.beginBatchEdit();
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean commitText(CharSequence charSequence, int i4) {
        if (SearchEditText.f7565y) {
            Log.d("QuickLaunchV2", "commitText:" + ((Object) charSequence));
        }
        return i(new x(this, charSequence, i4, 1));
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i4, int i5) {
        if (SearchEditText.f7565y) {
            Log.d("QuickLaunchV2", "deleteSurroundingText:" + i4 + ";" + i5);
        }
        return i(new v(this, i4, i5, 1));
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean endBatchEdit() {
        if (SearchEditText.f7565y) {
            Log.d("QuickLaunchV2", "endBatchEdit");
        }
        int i4 = this.f2315b - 1;
        this.f2315b = i4;
        if (i4 < 0) {
            this.f2315b = 0;
            return super.endBatchEdit();
        }
        if (i4 == 0) {
            g();
        }
        return super.endBatchEdit();
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean finishComposingText() {
        if (SearchEditText.f7565y) {
            Log.d("QuickLaunchV2", "finishComposingText");
        }
        return i(new Callable() { // from class: Y1.w
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Boolean valueOf;
                valueOf = Boolean.valueOf(super/*android.view.inputmethod.InputConnectionWrapper*/.finishComposingText());
                return valueOf;
            }
        });
    }

    public final void g() {
        if (this.f2315b > 0) {
            if (SearchEditText.f7565y) {
                Log.d("QuickLaunchV2", "===== isInBatchEdit; return");
                return;
            }
            return;
        }
        SurroundingText surroundingText = getSurroundingText(1024, 1024, 0);
        SearchEditText searchEditText = this.f2316c;
        searchEditText.f7576o.d(this.f2314a, surroundingText, searchEditText.f7570i, searchEditText.f7569h, searchEditText.f7583v);
        h();
    }

    public final void h() {
        if (this.f2315b > 0) {
            return;
        }
        this.f2314a = getSurroundingText(1024, 1024, 0);
    }

    public final boolean i(Callable callable) {
        h();
        try {
            g();
            return ((Boolean) callable.call()).booleanValue();
        } catch (Exception e4) {
            Log.e("QuickLaunchV2", "Failed to run watchForInput", e4);
            return false;
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean setComposingRegion(int i4, int i5) {
        if (SearchEditText.f7565y) {
            Log.d("QuickLaunchV2", "setComposingRegion:" + i4 + ";" + i5);
        }
        return i(new v(this, i4, i5, 2));
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean setComposingText(CharSequence charSequence, int i4) {
        if (SearchEditText.f7565y) {
            Log.d("QuickLaunchV2", "setComposingText:" + ((Object) charSequence));
        }
        return i(new x(this, charSequence, i4, 0));
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean setSelection(int i4, int i5) {
        if (SearchEditText.f7565y) {
            Log.d("QuickLaunchV2", "setSelection:" + i4 + ";" + i5);
        }
        return i(new v(this, i4, i5, 0));
    }
}
