package Y1;

import android.text.TextUtils;
import android.util.Log;
import android.view.inputmethod.SurroundingText;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.search.StringMatcherUtility;
import com.google.android.apps.nexuslauncher.allapps.C0719y0;
import com.google.android.apps.nexuslauncher.search.TypeAheadSearchInputView;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: h  reason: collision with root package name */
    public static final boolean f2290h;

    /* renamed from: a  reason: collision with root package name */
    public boolean f2291a;

    /* renamed from: b  reason: collision with root package name */
    public final StringMatcherUtility.StringMatcher f2292b = new StringMatcherUtility.StringMatcher();

    /* renamed from: c  reason: collision with root package name */
    public final C0719y0 f2293c;

    /* renamed from: d  reason: collision with root package name */
    public final Runnable f2294d;

    /* renamed from: e  reason: collision with root package name */
    public final Runnable f2295e;

    /* renamed from: f  reason: collision with root package name */
    public final Runnable f2296f;

    /* renamed from: g  reason: collision with root package name */
    public String f2297g;

    static {
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        f2290h = Log.isLoggable("QuickLaunchV2", 2);
    }

    public g(t tVar, t tVar2, t tVar3, C0719y0 c0719y0) {
        this.f2294d = tVar;
        this.f2295e = tVar2;
        this.f2296f = tVar3;
        this.f2293c = c0719y0;
    }

    public static CharSequence a(SurroundingText surroundingText) {
        return surroundingText.getText().subSequence(surroundingText.getSelectionStart(), surroundingText.getSelectionEnd());
    }

    public static String b(SurroundingText surroundingText) {
        return "[" + ((Object) surroundingText.getText().subSequence(0, surroundingText.getSelectionStart())) + "|" + ((Object) a(surroundingText)) + "|" + ((Object) surroundingText.getText().subSequence(surroundingText.getSelectionEnd(), surroundingText.getText().length())) + "]";
    }

    public final void c(ActivityAllAppsContainerView activityAllAppsContainerView) {
        if (this.f2293c.f7283p.f7190m) {
            this.f2295e.run();
            this.f2291a = true;
            if (activityAllAppsContainerView.getActiveRecyclerView().getAdapter() != null) {
                activityAllAppsContainerView.getActiveRecyclerView().getAdapter().notifyItemChanged(0);
            }
            this.f2296f.run();
        }
    }

    public final void d(SurroundingText surroundingText, SurroundingText surroundingText2, String str, TypeAheadSearchInputView typeAheadSearchInputView, ActivityAllAppsContainerView activityAllAppsContainerView) {
        boolean z4 = f2290h;
        if (surroundingText == null || surroundingText2 == null) {
            if (z4) {
                Log.e("QuickLaunchV2", "cacheSrdText or newSrdText is null");
                return;
            }
            return;
        }
        if (z4) {
            Log.d("QuickLaunchV2", "before=" + b(surroundingText));
            Log.d("QuickLaunchV2", "after=" + b(surroundingText2));
        }
        if (TextUtils.equals(surroundingText.getText(), surroundingText2.getText()) && surroundingText.getSelectionStart() == surroundingText2.getSelectionStart() && surroundingText.getSelectionEnd() == surroundingText2.getSelectionEnd()) {
            if (z4) {
                Log.d("QuickLaunchV2", "===== no change; return");
                return;
            }
            return;
        }
        C0719y0 c0719y0 = this.f2293c;
        boolean x4 = c0719y0.x();
        StringMatcherUtility.StringMatcher stringMatcher = this.f2292b;
        if (x4) {
            String charSequence = surroundingText.getText().toString();
            String charSequence2 = surroundingText2.getText().toString();
            if (!stringMatcher.matches(charSequence, charSequence2)) {
                if (stringMatcher.matches(charSequence2, charSequence)) {
                    this.f2291a = true;
                    return;
                }
                return;
            }
            this.f2291a = false;
            if (str == null || !str.startsWith(charSequence2)) {
                return;
            }
            typeAheadSearchInputView.c(charSequence2, str, false);
        } else if (c0719y0.f7283p.f7190m) {
            CharSequence a4 = a(surroundingText);
            CharSequence subSequence = surroundingText.getText().subSequence(0, surroundingText.getSelectionStart());
            CharSequence a5 = a(surroundingText2);
            CharSequence subSequence2 = surroundingText2.getText().subSequence(0, surroundingText2.getSelectionStart());
            this.f2297g = subSequence2.toString();
            String charSequence3 = surroundingText2.getText().toString();
            if (!TextUtils.isEmpty(a5)) {
                if (z4) {
                    Log.d("QuickLaunchV2", "===== auto append; return");
                }
                this.f2291a = false;
                return;
            }
            int length = subSequence.length();
            int length2 = subSequence2.length();
            Runnable runnable = this.f2295e;
            Runnable runnable2 = this.f2294d;
            if (length < length2) {
                if (str != null && !str.startsWith(subSequence2.toString())) {
                    if (z4) {
                        Log.d("QuickLaunchV2", "===== input new diff chars; clear hint; doSearch");
                    }
                    runnable.run();
                } else if (str == null || !str.startsWith(subSequence2.toString())) {
                    if (z4) {
                        Log.d("QuickLaunchV2", "===== input new chars; doSearch");
                    }
                    runnable.run();
                } else {
                    if (z4) {
                        Log.d("QuickLaunchV2", "===== input new same chars; apply TextView selection; doSearch");
                    }
                    typeAheadSearchInputView.c(subSequence2.toString(), str, false);
                }
                this.f2291a = false;
                runnable2.run();
            } else if (subSequence.length() > subSequence2.length()) {
                if (z4) {
                    Log.d("QuickLaunchV2", "===== delete chars; clear hint; remove highlight; doSearch");
                }
                runnable.run();
                this.f2291a = true;
                runnable2.run();
            } else if (!TextUtils.isEmpty(a4)) {
                if (!surroundingText.getText().toString().startsWith(charSequence3)) {
                    if (z4) {
                        Log.d("QuickLaunchV2", "===== delete partial selected; clear hint; doSearch");
                    }
                    runnable.run();
                    this.f2291a = false;
                    runnable2.run();
                    return;
                }
                if (z4) {
                    Log.d("QuickLaunchV2", "===== delete selected text; clear hint; remove highlight; return");
                }
                c(activityAllAppsContainerView);
                if (TextUtils.isEmpty(charSequence3)) {
                    runnable2.run();
                }
            } else if (stringMatcher.matches(subSequence.toString(), subSequence2.toString())) {
                if (z4) {
                    Log.d("QuickLaunchV2", "===== non-English input; doSearch");
                }
                this.f2291a = false;
                runnable2.run();
            } else if (!stringMatcher.matches(subSequence2.toString(), subSequence.toString())) {
                if (z4) {
                    Log.d("QuickLaunchV2", "===== no change; return");
                }
            } else {
                if (z4) {
                    Log.d("QuickLaunchV2", "===== non-English delete; doSearch");
                }
                runnable.run();
                this.f2291a = true;
                runnable2.run();
            }
        }
    }
}
