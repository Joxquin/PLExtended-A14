.class public Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;
.super Lcom/android/systemui/animation/view/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/A2;
.implements Lcom/android/launcher3/views/BubbleTextHolder;


# static fields
.field public static final synthetic z:I


# instance fields
.field public final e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final f:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

.field public g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:Ljava/lang/String;

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public u:Landroid/widget/ImageView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/ImageButton;

.field public x:Landroid/view/View;

.field public y:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/view/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x3

    new-array p2, p2, [Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    .line 4
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->f:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    .line 5
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070491

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->k:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070493

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->l:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070492

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->m:I

    const p2, 0x1010036

    .line 9
    invoke-static {p2, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p2

    .line 10
    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->s:I

    const p2, 0x1010038

    .line 11
    invoke-static {p2, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p1

    .line 12
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->t:I

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070494

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->n:I

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f130197

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->o:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704cf

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->p:I

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07045a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->q:I

    .line 17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07045b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->r:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->c()Z

    move-result p0

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d()Z

    move-result p0

    return p0
.end method

.method public final e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v7, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v9

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mark_label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_0

    move v1, v12

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v13, -0x1

    const-string v5, "icon_row_medium"

    const-string v4, "extra_tall_icon_row"

    const-string v3, "short_icon_row"

    const-string v15, "short_icon_row_thumbnail"

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v11

    goto :goto_2

    :sswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v12

    goto :goto_2

    :sswitch_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_2

    :cond_1
    :goto_1
    move v0, v13

    :goto_2
    if-eqz v0, :cond_3

    if-eq v0, v12, :cond_2

    iget v2, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->l:I

    const/16 v16, 0x0

    iget v0, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->m:I

    const/16 v17, 0x1

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object v14, v3

    move/from16 v3, v16

    move-object/from16 v19, v4

    move/from16 v4, v18

    move-object/from16 v20, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->k(ZIIII)V

    goto :goto_3

    :cond_2
    move-object v14, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    iget v2, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->k:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->k(ZIIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v13, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_3
    move-object v14, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    iget v2, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->k:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->k(ZIIII)V

    :goto_3
    iget-object v0, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v0, v8}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o(Landroid/app/search/SearchTarget;)Z

    const/16 v0, 0x8

    if-eqz v9, :cond_5

    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v12

    goto :goto_4

    :cond_4
    move v2, v11

    :goto_4
    iput-boolean v2, v1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->u:Z

    goto :goto_5

    :cond_5
    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iput-boolean v12, v1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->u:Z

    :cond_6
    :goto_5
    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->h:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v1

    const/high16 v2, 0x20000

    const-string v3, "suggest_raw_text"

    if-ne v1, v2, :cond_a

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v13, 0x7f13024c

    invoke-virtual {v4, v13, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v4, "suggest_truncate_start"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->h:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_7
    const-string v4, "suggest_render_text"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->h:Landroid/widget/TextView;

    iget v5, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->s:I

    iget v13, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->t:I

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-class v2, Landroid/text/style/StyleSpan;

    invoke-virtual {v0, v11, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/StyleSpan;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    invoke-virtual {v0, v2, v11, v13, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    array-length v2, v1

    move v13, v11

    :goto_6
    if-ge v13, v2, :cond_9

    aget-object v11, v1, v13

    move-object/from16 v21, v1

    invoke-virtual {v11}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v1

    if-ne v1, v12, :cond_8

    invoke-virtual {v0, v11}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v11}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v0, v11}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move/from16 v22, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v1, v12, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    :cond_8
    move/from16 v22, v2

    :goto_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v21

    move/from16 v2, v22

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_a
    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_8

    :cond_b
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_8
    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_9
    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v0

    const v1, 0x636f34

    and-int/2addr v0, v1

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "subtitle_override"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/app/search/SearchAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    :cond_d
    invoke-static {v9}, Lz0/b;->a(Landroid/app/search/SearchAction;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "subtitle_content_description_override"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget v5, v5, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->r:I

    const/4 v9, 0x1

    invoke-static {v5, v9}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->h(II)Z

    move-result v5

    const/high16 v9, 0x20000

    and-int v11, v0, v9

    if-eqz v11, :cond_e

    const/4 v9, 0x1

    goto :goto_a

    :cond_e
    const/4 v9, 0x0

    :goto_a
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_b

    :cond_f
    const/4 v0, 0x0

    :goto_b
    iget-object v11, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->j:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v11, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->j:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->i:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_14

    if-eqz v5, :cond_10

    goto :goto_e

    :cond_10
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_c

    :cond_11
    const/4 v5, 0x0

    goto :goto_d

    :cond_12
    :goto_c
    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->i:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d
    if-eqz v9, :cond_13

    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    iget v11, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->n:I

    invoke-virtual {v1, v9, v5, v11, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_13
    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_14

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2605"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->j:Landroid/widget/TextView;

    iget-object v4, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v5, Lcom/google/android/apps/nexuslauncher/allapps/B;->a:Z

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    add-int/2addr v1, v9

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1300d1

    filled-new-array {v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_e
    iget-object v0, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->v:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->v:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_15
    iget-object v0, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->u:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v8}, Lz0/f;->e(Landroid/app/search/SearchTarget;)Z

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v0, :cond_17

    if-nez v1, :cond_16

    goto :goto_f

    :cond_16
    iget-object v0, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_17
    :goto_f
    iget-object v0, v7, Lcom/google/android/apps/nexuslauncher/allapps/h1;->b:Ljava/util/List;

    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->f:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-static {v1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->b([Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;Ljava/util/List;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_10

    :cond_18
    const/4 v0, 0x0

    :goto_10
    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->w:Landroid/widget/ImageButton;

    invoke-virtual {v1, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->w:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->w:Landroid/widget/ImageButton;

    invoke-virtual {v1, v13}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->w:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->p:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v2, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->q:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->w:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "support_query_builder"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_13

    :cond_19
    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v1

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_11

    :cond_1a
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_1b

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_1b
    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_12
    iget-object v2, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->w:Landroid/widget/ImageButton;

    iget-object v3, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->o:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->w:Landroid/widget/ImageButton;

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/b2;

    invoke-direct {v3, v6, v1}, Lcom/google/android/apps/nexuslauncher/allapps/b2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    iget v3, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->m:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->w:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_14

    :cond_1c
    :goto_13
    const/4 v4, 0x0

    :goto_14
    iget-object v1, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->x:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_28

    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lz0/a;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_15

    :sswitch_4
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_15

    :cond_1d
    const/4 v13, 0x3

    goto :goto_16

    :sswitch_5
    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_15

    :cond_1e
    const/4 v13, 0x2

    goto :goto_16

    :sswitch_6
    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_15

    :cond_1f
    const/4 v13, 0x1

    goto :goto_16

    :sswitch_7
    const-string v1, "icon_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_15

    :cond_20
    move v13, v4

    goto :goto_16

    :goto_15
    const/4 v13, -0x1

    :goto_16
    if-eqz v13, :cond_21

    const/4 v0, 0x1

    if-eq v13, v0, :cond_21

    const/4 v0, 0x2

    if-eq v13, v0, :cond_21

    const/4 v0, 0x3

    if-eq v13, v0, :cond_21

    move v2, v4

    goto :goto_17

    :cond_21
    const/4 v2, 0x1

    :goto_17
    if-nez v2, :cond_22

    goto :goto_1c

    :cond_22
    invoke-static {v8}, Lz0/f;->f(Landroid/app/search/SearchTarget;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_19

    :cond_23
    invoke-static {v8}, Lz0/f;->f(Landroid/app/search/SearchTarget;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v2, v4

    goto :goto_18

    :cond_24
    invoke-virtual {v8}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "blobstore_handle_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v2, v0, Landroid/app/blob/BlobHandle;

    :goto_18
    if-nez v2, :cond_26

    invoke-static {v8}, Lz0/f;->d(Landroid/app/search/SearchTarget;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_1a

    :cond_25
    :goto_19
    move v11, v4

    goto :goto_1b

    :cond_26
    :goto_1a
    const/4 v11, 0x1

    :goto_1b
    if-nez v11, :cond_27

    goto :goto_1c

    :cond_27
    iget-object v0, v6, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->y:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->s(Lcom/google/android/apps/nexuslauncher/allapps/h1;IZ)V

    :cond_28
    :goto_1c
    iget-object v0, v7, Lcom/google/android/apps/nexuslauncher/allapps/h1;->d:Lcom/google/android/apps/nexuslauncher/allapps/I2;

    invoke-interface {v6, v0}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->h(Lcom/google/android/apps/nexuslauncher/allapps/I2;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x758fc689 -> :sswitch_3
        -0x2372c589 -> :sswitch_2
        -0x14fe5300 -> :sswitch_1
        0x571b5c24 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x2bf6beec -> :sswitch_7
        -0x2372c589 -> :sswitch_6
        -0x14fe5300 -> :sswitch_5
        0x571b5c24 -> :sswitch_4
    .end sparse-switch
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getBubbleText()Lcom/android/launcher3/BubbleTextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    return-object p0
.end method

.method public getMarkText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final k(ZIIII)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->j:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->v:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->u:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v6

    const v7, 0x7f0a0381

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v8, Landroidx/constraintlayout/widget/q;

    invoke-direct {v8}, Landroidx/constraintlayout/widget/q;-><init>()V

    invoke-virtual {v8, v7}, Landroidx/constraintlayout/widget/q;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v9

    const/4 v10, 0x6

    invoke-virtual {v8, v1, v10, v9, v10}, Landroidx/constraintlayout/widget/q;->d(IIII)V

    const/4 v11, 0x3

    invoke-virtual {v8, v1, v11, v9, v11}, Landroidx/constraintlayout/widget/q;->d(IIII)V

    const/4 v12, 0x7

    invoke-virtual {v8, v3, v10, v1, v12}, Landroidx/constraintlayout/widget/q;->d(IIII)V

    invoke-virtual {v8, v3, v11, v1, v11}, Landroidx/constraintlayout/widget/q;->d(IIII)V

    const/4 v13, 0x4

    invoke-virtual {v8, v3, v13, v1, v13}, Landroidx/constraintlayout/widget/q;->d(IIII)V

    invoke-virtual {v8, v5, v10, v3, v12}, Landroidx/constraintlayout/widget/q;->d(IIII)V

    invoke-virtual {v8, v5, v11, v1, v11}, Landroidx/constraintlayout/widget/q;->d(IIII)V

    invoke-virtual {v8, v5, v13, v1, v13}, Landroidx/constraintlayout/widget/q;->d(IIII)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v8, v6, v10, v5, v12}, Landroidx/constraintlayout/widget/q;->d(IIII)V

    invoke-virtual {v8, v6, v11, v1, v11}, Landroidx/constraintlayout/widget/q;->d(IIII)V

    invoke-virtual {v8, v6, v13, v1, v13}, Landroidx/constraintlayout/widget/q;->d(IIII)V

    const/4 v5, 0x1

    move/from16 v6, p3

    if-ne v6, v5, :cond_1

    invoke-virtual {v8, v4, v10, v1, v10}, Landroidx/constraintlayout/widget/q;->d(IIII)V

    invoke-virtual {v8, v4, v11, v1, v13}, Landroidx/constraintlayout/widget/q;->d(IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v4, v10, v3, v12}, Landroidx/constraintlayout/widget/q;->d(IIII)V

    invoke-virtual {v8, v4, v11, v9, v11}, Landroidx/constraintlayout/widget/q;->d(IIII)V

    :goto_1
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/widget/q;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    move/from16 v4, p4

    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->j:Landroid/widget/TextView;

    if-ne v2, v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->B:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result p0

    return p0
.end method

.method public final onFinishInflate()V
    .locals 7

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a01c7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/a2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/a2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;I)V

    iput-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->f:Ljava/util/function/Consumer;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v0

    const v2, 0x7f0a039b

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->h:Landroid/widget/TextView;

    const v2, 0x7f0a011e

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->i:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0a033b

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0a0203

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->v:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0a03fc

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->u:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->f:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const v2, 0x7f0a02fc

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    aput-object v2, v0, v3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->f:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const v2, 0x7f0a02fd

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->f:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const v2, 0x7f0a02fe

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->f:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v6}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0298

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->w:Landroid/widget/ImageButton;

    const v0, 0x7f0a033d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->x:Landroid/view/View;

    const v0, 0x7f0a02a9

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->y:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/a2;

    invoke-direct {v1, p0, v4}, Lcom/google/android/apps/nexuslauncher/allapps/a2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultThumbnailView;->r:Ljava/util/function/Consumer;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultSmallIconRow;->g:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->s:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
