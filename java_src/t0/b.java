package T0;

import android.view.View;
import com.android.launcher3.Launcher;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements View.OnClickListener {
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Launcher.getLauncher(view.getContext()).startSearch("", false, null, true);
    }
}
