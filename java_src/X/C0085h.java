package X;

import android.content.Context;
import android.text.TextUtils;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: X.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0085h extends Preference {

    /* renamed from: d  reason: collision with root package name */
    public final long f2009d;

    public C0085h(Context context, List list, long j4) {
        super(context);
        setLayoutResource();
        setIcon$1();
        setTitle(R.string.expand_button_title);
        setOrder(999);
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) list).iterator();
        CharSequence charSequence = null;
        while (it.hasNext()) {
            Preference preference = (Preference) it.next();
            CharSequence title = preference.getTitle();
            boolean z4 = preference instanceof PreferenceGroup;
            if (z4 && !TextUtils.isEmpty(title)) {
                arrayList.add((PreferenceGroup) preference);
            }
            if (arrayList.contains(preference.getParent())) {
                if (z4) {
                    arrayList.add((PreferenceGroup) preference);
                }
            } else if (!TextUtils.isEmpty(title)) {
                charSequence = charSequence == null ? title : getContext().getString(R.string.summary_collapsed_preference_list, charSequence, title);
            }
        }
        setSummary(charSequence);
        this.f2009d = j4 + 1000000;
    }

    @Override // androidx.preference.Preference
    public final long getId() {
        return this.f2009d;
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(a0 a0Var) {
        super.onBindViewHolder(a0Var);
        a0Var.f1983g = false;
    }
}
