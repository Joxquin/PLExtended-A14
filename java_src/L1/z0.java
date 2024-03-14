package L1;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class z0 extends ActionMode.Callback2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ A0 f1302a;

    public z0(A0 a02) {
        this.f1302a = a02;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        this.f1302a.f1040l.a();
        this.f1302a.b(false);
        if (itemId == R.id.url_copy) {
            ClipboardManager clipboardManager = (ClipboardManager) this.f1302a.f1032d.getSystemService("clipboard");
            ClipData newPlainText = ClipData.newPlainText("url", this.f1302a.f1038j);
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(newPlainText);
            }
            this.f1302a.b(false);
            Toast.makeText(this.f1302a.getContext(), (int) R.string.copy_url_description, 0).show();
            return true;
        } else if (itemId == R.id.url_share) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND").addFlags(268435456).addFlags(1).setType("text/plain").putExtra("android.intent.extra.TEXT", this.f1302a.f1038j);
            this.f1302a.getContext().startActivity(Intent.createChooser(intent, null).addFlags(268435456));
            return true;
        } else {
            return false;
        }
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        actionMode.setTitle((CharSequence) null);
        actionMode.setSubtitle((CharSequence) null);
        actionMode.setTitleOptionalHint(true);
        A0 a02 = this.f1302a;
        int i4 = A0.f1031m;
        a02.getClass();
        menu.clear();
        menu.add(0, R.id.url_copy, 0, a02.getResources().getString(R.string.url_menu_copy)).setShowAsAction(2);
        menu.add(0, R.id.url_share, 0, a02.getResources().getString(R.string.url_menu_share)).setShowAsAction(2);
        return true;
    }

    @Override // android.view.ActionMode.Callback
    public final void onDestroyActionMode(ActionMode actionMode) {
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return false;
    }
}
