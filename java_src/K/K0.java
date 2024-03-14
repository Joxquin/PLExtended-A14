package k;

import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.SearchView$SearchAutoComplete;
/* loaded from: classes.dex */
public final class K0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ SearchView$SearchAutoComplete f10791d;

    public K0(SearchView$SearchAutoComplete searchView$SearchAutoComplete) {
        this.f10791d = searchView$SearchAutoComplete;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SearchView$SearchAutoComplete searchView$SearchAutoComplete = this.f10791d;
        if (searchView$SearchAutoComplete.f2595i) {
            ((InputMethodManager) searchView$SearchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchView$SearchAutoComplete, 0);
            searchView$SearchAutoComplete.f2595i = false;
        }
    }
}
