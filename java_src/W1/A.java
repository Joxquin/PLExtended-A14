package W1;

import android.content.Intent;
import android.view.View;
import com.google.android.apps.nexuslauncher.qsb.SmartspaceViewContainer;
/* loaded from: classes.dex */
public final /* synthetic */ class A implements View.OnLongClickListener {
    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        int i4 = SmartspaceViewContainer.f7540g;
        view.getContext().startActivity(new Intent("android.intent.action.APPLICATION_PREFERENCES").setPackage(view.getContext().getPackageName()).putExtra(":settings:fragment_args_key", "pref_smartspace").addFlags(268468224));
        return true;
    }
}
