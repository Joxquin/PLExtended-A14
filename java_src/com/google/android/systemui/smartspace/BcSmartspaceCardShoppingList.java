package com.google.android.systemui.smartspace;

import K2.AbstractC0041n;
import K2.t;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.shared.R;
import java.util.Locale;
import n1.d;
/* loaded from: classes.dex */
public class BcSmartspaceCardShoppingList extends AbstractC0041n {

    /* renamed from: j  reason: collision with root package name */
    public static final int[] f8307j = {R.id.list_item_1, R.id.list_item_2, R.id.list_item_3};

    /* renamed from: e  reason: collision with root package name */
    public TextView f8308e;

    /* renamed from: f  reason: collision with root package name */
    public TextView f8309f;

    /* renamed from: g  reason: collision with root package name */
    public ImageView f8310g;

    /* renamed from: h  reason: collision with root package name */
    public ImageView f8311h;

    /* renamed from: i  reason: collision with root package name */
    public final TextView[] f8312i;

    public BcSmartspaceCardShoppingList(Context context) {
        super(context);
        this.f8312i = new TextView[3];
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8308e = (TextView) findViewById(R.id.card_prompt);
        this.f8309f = (TextView) findViewById(R.id.empty_list_message);
        this.f8310g = (ImageView) findViewById(R.id.card_prompt_icon);
        this.f8311h = (ImageView) findViewById(R.id.list_icon);
        for (int i4 = 0; i4 < 3; i4++) {
            this.f8312i[i4] = (TextView) findViewById(f8307j[i4]);
        }
    }

    @Override // K2.AbstractC0041n
    public final void s() {
        t.f(this.f8309f, 8);
        t.f(this.f8311h, 8);
        t.f(this.f8310g, 8);
        t.f(this.f8308e, 8);
        for (int i4 = 0; i4 < 3; i4++) {
            t.f(this.f8312i[i4], 8);
        }
    }

    @Override // K2.AbstractC0041n
    public final boolean t(SmartspaceTarget smartspaceTarget, d dVar, L2.d dVar2) {
        SmartspaceAction baseAction = smartspaceTarget.getBaseAction();
        Bitmap bitmap = null;
        Bundle extras = baseAction == null ? null : baseAction.getExtras();
        if (extras != null) {
            if (extras.containsKey("appIcon")) {
                bitmap = (Bitmap) extras.get("appIcon");
            } else if (extras.containsKey("imageBitmap")) {
                bitmap = (Bitmap) extras.get("imageBitmap");
            }
            this.f8310g.setImageBitmap(bitmap);
            this.f8311h.setImageBitmap(bitmap);
            if (extras.containsKey("cardPrompt")) {
                String string = extras.getString("cardPrompt");
                TextView textView = this.f8308e;
                if (textView == null) {
                    Log.w("BcSmartspaceCardShoppingList", "No card prompt view to update");
                } else {
                    textView.setText(string);
                }
                t.f(this.f8308e, 0);
                if (bitmap != null) {
                    t.f(this.f8310g, 0);
                }
                return true;
            } else if (extras.containsKey("emptyListString")) {
                String string2 = extras.getString("emptyListString");
                TextView textView2 = this.f8309f;
                if (textView2 == null) {
                    Log.w("BcSmartspaceCardShoppingList", "No empty list message view to update");
                } else {
                    textView2.setText(string2);
                }
                t.f(this.f8309f, 0);
                t.f(this.f8311h, 0);
                return true;
            } else if (extras.containsKey("listItems")) {
                String[] stringArray = extras.getStringArray("listItems");
                if (stringArray.length == 0) {
                    return false;
                }
                t.f(this.f8311h, 0);
                int i4 = 0;
                while (true) {
                    if (i4 >= 3) {
                        break;
                    }
                    TextView textView3 = this.f8312i[i4];
                    if (textView3 == null) {
                        Log.w("BcSmartspaceCardShoppingList", String.format(Locale.US, "Missing list item view to update at row: %d", Integer.valueOf(i4 + 1)));
                        break;
                    }
                    if (i4 < stringArray.length) {
                        t.f(textView3, 0);
                        textView3.setText(stringArray[i4]);
                    } else {
                        t.f(textView3, 8);
                        textView3.setText("");
                    }
                    i4++;
                }
                return true;
            }
        }
        return false;
    }

    @Override // K2.AbstractC0041n
    public final void u(int i4) {
        this.f8308e.setTextColor(i4);
        this.f8309f.setTextColor(i4);
        for (int i5 = 0; i5 < 3; i5++) {
            TextView textView = this.f8312i[i5];
            if (textView == null) {
                Log.w("BcSmartspaceCardShoppingList", String.format(Locale.US, "Missing list item view to update at row: %d", Integer.valueOf(i5 + 1)));
                return;
            }
            textView.setTextColor(i4);
        }
    }

    public BcSmartspaceCardShoppingList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8312i = new TextView[3];
    }
}
