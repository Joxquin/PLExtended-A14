package androidx.emoji2.text;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class f extends SpannableStringBuilder {

    /* renamed from: d  reason: collision with root package name */
    public final Class f3227d;

    /* renamed from: e  reason: collision with root package name */
    public final List f3228e;

    public f(Class cls, CharSequence charSequence) {
        super(charSequence);
        this.f3228e = new ArrayList();
        L.f.b(cls, "watcherClass cannot be null");
        this.f3227d = cls;
    }

    public final void a() {
        for (int i4 = 0; i4 < ((ArrayList) this.f3228e).size(); i4++) {
            ((e) ((ArrayList) this.f3228e).get(i4)).f3226e.incrementAndGet();
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    public final e b(Object obj) {
        for (int i4 = 0; i4 < this.f3228e.size(); i4++) {
            e eVar = (e) this.f3228e.get(i4);
            if (eVar.f3225d == obj) {
                return eVar;
            }
        }
        return null;
    }

    public final boolean c(Object obj) {
        if (obj != null) {
            return this.f3227d == obj.getClass();
        }
        return false;
    }

    public final void d() {
        for (int i4 = 0; i4 < ((ArrayList) this.f3228e).size(); i4++) {
            ((e) ((ArrayList) this.f3228e).get(i4)).f3226e.decrementAndGet();
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable delete(int i4, int i5) {
        super.delete(i4, i5);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanEnd(Object obj) {
        e b4;
        if (c(obj) && (b4 = b(obj)) != null) {
            obj = b4;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanFlags(Object obj) {
        e b4;
        if (c(obj) && (b4 = b(obj)) != null) {
            obj = b4;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanStart(Object obj) {
        e b4;
        if (c(obj) && (b4 = b(obj)) != null) {
            obj = b4;
        }
        return super.getSpanStart(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final Object[] getSpans(int i4, int i5, Class cls) {
        if (this.f3227d == cls) {
            e[] eVarArr = (e[]) super.getSpans(i4, i5, e.class);
            Object[] objArr = (Object[]) Array.newInstance(cls, eVarArr.length);
            for (int i6 = 0; i6 < eVarArr.length; i6++) {
                objArr[i6] = eVarArr[i6].f3225d;
            }
            return objArr;
        }
        return super.getSpans(i4, i5, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable insert(int i4, CharSequence charSequence) {
        super.insert(i4, charSequence);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0009, code lost:
        if ((r1.f3227d == r4) != false) goto L10;
     */
    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int nextSpanTransition(int r2, int r3, java.lang.Class r4) {
        /*
            r1 = this;
            if (r4 == 0) goto Lb
            java.lang.Class r0 = r1.f3227d
            if (r0 != r4) goto L8
            r0 = 1
            goto L9
        L8:
            r0 = 0
        L9:
            if (r0 == 0) goto Ld
        Lb:
            java.lang.Class<androidx.emoji2.text.e> r4 = androidx.emoji2.text.e.class
        Ld:
            int r1 = super.nextSpanTransition(r2, r3, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.f.nextSpanTransition(int, int, java.lang.Class):int");
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void removeSpan(Object obj) {
        e eVar;
        if (c(obj)) {
            eVar = b(obj);
            if (eVar != null) {
                obj = eVar;
            }
        } else {
            eVar = null;
        }
        super.removeSpan(obj);
        if (eVar != null) {
            ((ArrayList) this.f3228e).remove(eVar);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final /* bridge */ /* synthetic */ Editable replace(int i4, int i5, CharSequence charSequence) {
        replace(i4, i5, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void setSpan(Object obj, int i4, int i5, int i6) {
        if (c(obj)) {
            e eVar = new e(obj);
            ((ArrayList) this.f3228e).add(eVar);
            obj = eVar;
        }
        super.setSpan(obj, i4, i5, i6);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    public final CharSequence subSequence(int i4, int i5) {
        return new f(this.f3227d, this, i4, i5);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder delete(int i4, int i5) {
        super.delete(i4, i5);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder insert(int i4, CharSequence charSequence) {
        super.insert(i4, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final /* bridge */ /* synthetic */ Editable replace(int i4, int i5, CharSequence charSequence, int i6, int i7) {
        replace(i4, i5, charSequence, i6, i7);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable insert(int i4, CharSequence charSequence, int i5, int i6) {
        super.insert(i4, charSequence, i5, i6);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder replace(int i4, int i5, CharSequence charSequence) {
        a();
        super.replace(i4, i5, charSequence);
        d();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(char c4) {
        super.append(c4);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder insert(int i4, CharSequence charSequence, int i5, int i6) {
        super.insert(i4, charSequence, i5, i6);
        return this;
    }

    public f(Class cls, CharSequence charSequence, int i4, int i5) {
        super(charSequence, i4, i5);
        this.f3228e = new ArrayList();
        L.f.b(cls, "watcherClass cannot be null");
        this.f3227d = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(char c4) {
        super.append(c4);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(char c4) {
        super.append(c4);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder replace(int i4, int i5, CharSequence charSequence, int i6, int i7) {
        a();
        super.replace(i4, i5, charSequence, i6, i7);
        d();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence, int i4, int i5) {
        super.append(charSequence, i4, i5);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(CharSequence charSequence, int i4, int i5) {
        super.append(charSequence, i4, i5);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i4, int i5) {
        super.append(charSequence, i4, i5);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    public final SpannableStringBuilder append(CharSequence charSequence, Object obj, int i4) {
        super.append(charSequence, obj, i4);
        return this;
    }
}
