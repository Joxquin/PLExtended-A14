package k;

import android.content.res.Resources;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import java.util.Objects;
/* loaded from: classes.dex */
public final class U implements ListAdapter, SpinnerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final SpinnerAdapter f10832d;

    /* renamed from: e  reason: collision with root package name */
    public final ListAdapter f10833e;

    public U(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
        this.f10832d = spinnerAdapter;
        if (spinnerAdapter instanceof ListAdapter) {
            this.f10833e = (ListAdapter) spinnerAdapter;
        }
        if (theme != null) {
            if (spinnerAdapter instanceof ThemedSpinnerAdapter) {
                ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                if (Objects.equals(themedSpinnerAdapter.getDropDownViewTheme(), theme)) {
                    return;
                }
                themedSpinnerAdapter.setDropDownViewTheme(theme);
            } else if (spinnerAdapter instanceof N0) {
                N0 n02 = (N0) spinnerAdapter;
                if (n02.getDropDownViewTheme() == null) {
                    n02.a();
                }
            }
        }
    }

    @Override // android.widget.ListAdapter
    public final boolean areAllItemsEnabled() {
        ListAdapter listAdapter = this.f10833e;
        if (listAdapter != null) {
            return listAdapter.areAllItemsEnabled();
        }
        return true;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        SpinnerAdapter spinnerAdapter = this.f10832d;
        if (spinnerAdapter == null) {
            return 0;
        }
        return spinnerAdapter.getCount();
    }

    @Override // android.widget.SpinnerAdapter
    public final View getDropDownView(int i4, View view, ViewGroup viewGroup) {
        SpinnerAdapter spinnerAdapter = this.f10832d;
        if (spinnerAdapter == null) {
            return null;
        }
        return spinnerAdapter.getDropDownView(i4, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i4) {
        SpinnerAdapter spinnerAdapter = this.f10832d;
        if (spinnerAdapter == null) {
            return null;
        }
        return spinnerAdapter.getItem(i4);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i4) {
        SpinnerAdapter spinnerAdapter = this.f10832d;
        if (spinnerAdapter == null) {
            return -1L;
        }
        return spinnerAdapter.getItemId(i4);
    }

    @Override // android.widget.Adapter
    public final int getItemViewType(int i4) {
        return 0;
    }

    @Override // android.widget.Adapter
    public final View getView(int i4, View view, ViewGroup viewGroup) {
        return getDropDownView(i4, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public final int getViewTypeCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public final boolean hasStableIds() {
        SpinnerAdapter spinnerAdapter = this.f10832d;
        return spinnerAdapter != null && spinnerAdapter.hasStableIds();
    }

    @Override // android.widget.Adapter
    public final boolean isEmpty() {
        return getCount() == 0;
    }

    @Override // android.widget.ListAdapter
    public final boolean isEnabled(int i4) {
        ListAdapter listAdapter = this.f10833e;
        if (listAdapter != null) {
            return listAdapter.isEnabled(i4);
        }
        return true;
    }

    @Override // android.widget.Adapter
    public final void registerDataSetObserver(DataSetObserver dataSetObserver) {
        SpinnerAdapter spinnerAdapter = this.f10832d;
        if (spinnerAdapter != null) {
            spinnerAdapter.registerDataSetObserver(dataSetObserver);
        }
    }

    @Override // android.widget.Adapter
    public final void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        SpinnerAdapter spinnerAdapter = this.f10832d;
        if (spinnerAdapter != null) {
            spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
        }
    }
}
