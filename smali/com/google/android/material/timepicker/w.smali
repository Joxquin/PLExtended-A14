.class public final Lcom/google/android/material/timepicker/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/D;
.implements Lcom/google/android/material/timepicker/q;


# instance fields
.field public final d:Landroid/widget/LinearLayout;

.field public final e:Lcom/google/android/material/timepicker/n;

.field public final f:Lcom/google/android/material/timepicker/t;

.field public final g:Lcom/google/android/material/timepicker/t;

.field public final h:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field public final i:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field public final j:Landroid/widget/EditText;

.field public final k:Landroid/widget/EditText;

.field public l:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/n;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/material/timepicker/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/timepicker/t;-><init>(Lcom/google/android/material/timepicker/w;I)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/w;->f:Lcom/google/android/material/timepicker/t;

    new-instance v2, Lcom/google/android/material/timepicker/t;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/google/android/material/timepicker/t;-><init>(Lcom/google/android/material/timepicker/w;I)V

    iput-object v2, p0, Lcom/google/android/material/timepicker/w;->g:Lcom/google/android/material/timepicker/t;

    iput-object p1, p0, Lcom/google/android/material/timepicker/w;->d:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/google/android/material/timepicker/w;->e:Lcom/google/android/material/timepicker/n;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0212

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object v5, p0, Lcom/google/android/material/timepicker/w;->h:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const v6, 0x7f0a020f

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object v6, p0, Lcom/google/android/material/timepicker/w;->i:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const v7, 0x7f0a0211

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x7f130127

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f130126

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v7, 0x7f0a02f1

    invoke-virtual {v5, v7, v4}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    iget v4, p2, Lcom/google/android/material/timepicker/n;->f:I

    if-nez v4, :cond_0

    const v4, 0x7f0a020e

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object v4, p0, Lcom/google/android/material/timepicker/w;->l:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    new-instance v7, Lcom/google/android/material/timepicker/s;

    invoke-direct {v7, p0}, Lcom/google/android/material/timepicker/s;-><init>(Lcom/google/android/material/timepicker/w;)V

    iget-object v4, v4, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/android/material/timepicker/w;->l:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/w;->d()V

    :cond_0
    new-instance v4, Lcom/google/android/material/timepicker/u;

    invoke-direct {v4, p0}, Lcom/google/android/material/timepicker/u;-><init>(Lcom/google/android/material/timepicker/w;)V

    invoke-virtual {v6, v4}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v4}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p2, Lcom/google/android/material/timepicker/n;->e:Lcom/google/android/material/timepicker/j;

    iget-object v7, v6, Lcom/google/android/material/timepicker/ChipTextInputComboView;->f:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v7

    array-length v8, v7

    add-int/2addr v8, v3

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/InputFilter;

    array-length v7, v7

    aput-object v4, v8, v7

    iget-object v4, v6, Lcom/google/android/material/timepicker/ChipTextInputComboView;->f:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v4, p2, Lcom/google/android/material/timepicker/n;->d:Lcom/google/android/material/timepicker/j;

    iget-object v7, v5, Lcom/google/android/material/timepicker/ChipTextInputComboView;->f:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v7

    array-length v8, v7

    add-int/2addr v8, v3

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/InputFilter;

    array-length v7, v7

    aput-object v4, v8, v7

    iget-object v4, v5, Lcom/google/android/material/timepicker/ChipTextInputComboView;->f:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v4, v6, Lcom/google/android/material/timepicker/ChipTextInputComboView;->e:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/android/material/timepicker/w;->j:Landroid/widget/EditText;

    iget-object v7, v5, Lcom/google/android/material/timepicker/ChipTextInputComboView;->e:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v7, v7, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    iput-object v7, p0, Lcom/google/android/material/timepicker/w;->k:Landroid/widget/EditText;

    new-instance v8, Lcom/google/android/material/timepicker/r;

    invoke-direct {v8, v6, v5, p2}, Lcom/google/android/material/timepicker/r;-><init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/n;)V

    new-instance v9, Lcom/google/android/material/timepicker/v;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f130119

    invoke-direct {v9, v10, v11, p2, v1}, Lcom/google/android/material/timepicker/v;-><init>(Landroid/content/Context;ILcom/google/android/material/timepicker/n;I)V

    iget-object v1, v6, Lcom/google/android/material/timepicker/ChipTextInputComboView;->d:Lcom/google/android/material/chip/Chip;

    invoke-static {v1, v9}, Landroidx/core/view/J;->h(Landroid/view/View;Landroidx/core/view/b;)V

    new-instance v1, Lcom/google/android/material/timepicker/v;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v9, 0x7f13011b

    invoke-direct {v1, p1, v9, p2, v3}, Lcom/google/android/material/timepicker/v;-><init>(Landroid/content/Context;ILcom/google/android/material/timepicker/n;I)V

    iget-object p1, v5, Lcom/google/android/material/timepicker/ChipTextInputComboView;->d:Lcom/google/android/material/chip/Chip;

    invoke-static {p1, v1}, Landroidx/core/view/J;->h(Landroid/view/View;Landroidx/core/view/b;)V

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0, p2}, Lcom/google/android/material/timepicker/w;->c(Lcom/google/android/material/timepicker/n;)V

    iget-object p0, v6, Lcom/google/android/material/timepicker/ChipTextInputComboView;->e:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, v5, Lcom/google/android/material/timepicker/ChipTextInputComboView;->e:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    const p2, 0x10000005

    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setImeOptions(I)V

    const p2, 0x10000006

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p0, v8}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0, v8}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/timepicker/w;->e:Lcom/google/android/material/timepicker/n;

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/w;->c(Lcom/google/android/material/timepicker/n;)V

    return-void
.end method

.method public final b(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/timepicker/w;->e:Lcom/google/android/material/timepicker/n;

    iput p1, v0, Lcom/google/android/material/timepicker/n;->i:I

    const/16 v0, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/timepicker/w;->h:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v3, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object p1, p0, Lcom/google/android/material/timepicker/w;->i:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {p1, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/w;->d()V

    return-void
.end method

.method public final c(Lcom/google/android/material/timepicker/n;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/timepicker/w;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/w;->g:Lcom/google/android/material/timepicker/t;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/google/android/material/timepicker/w;->k:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/timepicker/w;->f:Lcom/google/android/material/timepicker/t;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lcom/google/android/material/timepicker/w;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget v5, p1, Lcom/google/android/material/timepicker/n;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/material/timepicker/n;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, v6, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/google/android/material/timepicker/w;->h:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v4, v5}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/google/android/material/timepicker/w;->i:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v4, p1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/w;->d()V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/w;->l:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/timepicker/w;->e:Lcom/google/android/material/timepicker/n;

    iget p0, p0, Lcom/google/android/material/timepicker/n;->j:I

    if-nez p0, :cond_1

    const p0, 0x7f0a020c

    goto :goto_0

    :cond_1
    const p0, 0x7f0a020d

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(IZ)V

    return-void
.end method

.method public final hide()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/material/timepicker/w;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    sget-object v3, LB/c;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final show()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/w;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/w;->e:Lcom/google/android/material/timepicker/n;

    iget v0, v0, Lcom/google/android/material/timepicker/n;->i:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/w;->b(I)V

    return-void
.end method
