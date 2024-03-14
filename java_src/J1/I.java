package J1;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$ErrorCode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class I {

    /* renamed from: a  reason: collision with root package name */
    public SuggestParcelables$ErrorCode f701a;

    /* renamed from: b  reason: collision with root package name */
    public String f702b;

    /* renamed from: c  reason: collision with root package name */
    public List f703c;

    public I(Bundle bundle) {
        if (bundle.containsKey("errorCode")) {
            Bundle bundle2 = bundle.getBundle("errorCode");
            if (bundle2 == null) {
                this.f701a = null;
            } else {
                int i4 = bundle2.getInt("value");
                this.f701a = i4 == 0 ? SuggestParcelables$ErrorCode.ERROR_CODE_SUCCESS : i4 == 1 ? SuggestParcelables$ErrorCode.ERROR_CODE_UNKNOWN_ERROR : i4 == 2 ? SuggestParcelables$ErrorCode.ERROR_CODE_TIMEOUT : i4 == 3 ? SuggestParcelables$ErrorCode.ERROR_CODE_NO_SCREEN_CONTENT : i4 == 4 ? SuggestParcelables$ErrorCode.ERROR_CODE_NO_SUPPORTED_LOCALES : null;
            }
        }
        if (bundle.containsKey("errorMesssage")) {
            this.f702b = bundle.getString("errorMesssage");
        }
        if (bundle.containsKey("setupFlags")) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("setupFlags");
            if (parcelableArrayList == null) {
                this.f703c = null;
                return;
            }
            this.f703c = new ArrayList(parcelableArrayList.size());
            Iterator it = parcelableArrayList.iterator();
            while (it.hasNext()) {
                Bundle bundle3 = (Bundle) it.next();
                if (bundle3 == null) {
                    ((ArrayList) this.f703c).add(null);
                } else {
                    ((ArrayList) this.f703c).add(new E(bundle3));
                }
            }
        }
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        SuggestParcelables$ErrorCode suggestParcelables$ErrorCode = this.f701a;
        if (suggestParcelables$ErrorCode == null) {
            bundle.putBundle("errorCode", null);
        } else {
            suggestParcelables$ErrorCode.getClass();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("value", suggestParcelables$ErrorCode.value);
            bundle.putBundle("errorCode", bundle2);
        }
        bundle.putString("errorMesssage", this.f702b);
        if (this.f703c == null) {
            bundle.putParcelableArrayList("setupFlags", null);
        } else {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(((ArrayList) this.f703c).size());
            Iterator it = ((ArrayList) this.f703c).iterator();
            while (it.hasNext()) {
                E e4 = (E) it.next();
                if (e4 == null) {
                    arrayList.add(null);
                } else {
                    Bundle bundle3 = new Bundle();
                    bundle3.putString("name", e4.f678a);
                    bundle3.putString("value", e4.f679b);
                    arrayList.add(bundle3);
                }
            }
            bundle.putParcelableArrayList("setupFlags", arrayList);
        }
        return bundle;
    }
}
