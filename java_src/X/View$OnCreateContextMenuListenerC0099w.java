package X;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import androidx.preference.Preference;
import com.android.systemui.shared.R;
/* renamed from: X.w  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class View$OnCreateContextMenuListenerC0099w implements View.OnCreateContextMenuListener, MenuItem.OnMenuItemClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final Preference f2020d;

    public View$OnCreateContextMenuListenerC0099w(Preference preference) {
        this.f2020d = preference;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        CharSequence summary = this.f2020d.getSummary();
        if (!this.f2020d.isCopyingEnabled() || TextUtils.isEmpty(summary)) {
            return;
        }
        contextMenu.setHeaderTitle(summary);
        contextMenu.add(0, 0, 0, R.string.copy).setOnMenuItemClickListener(this);
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        CharSequence summary = this.f2020d.getSummary();
        ((ClipboardManager) this.f2020d.getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("Preference", summary));
        Toast.makeText(this.f2020d.getContext(), this.f2020d.getContext().getString(R.string.preference_copied, summary), 0).show();
        return true;
    }
}
