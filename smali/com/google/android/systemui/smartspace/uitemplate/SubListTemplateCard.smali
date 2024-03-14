.class public Lcom/google/android/systemui/smartspace/uitemplate/SubListTemplateCard;
.super LK2/n;
.source "SourceFile"


# static fields
.field public static final g:[I


# instance fields
.field public e:Landroid/widget/ImageView;

.field public final f:[Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const v0, 0x7f0a01f9

    const v1, 0x7f0a01fa

    const v2, 0x7f0a01f8

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/smartspace/uitemplate/SubListTemplateCard;->g:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LK2/n;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/widget/TextView;

    .line 2
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubListTemplateCard;->f:[Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, LK2/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/widget/TextView;

    .line 4
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubListTemplateCard;->f:[Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0a01f6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubListTemplateCard;->e:Landroid/widget/ImageView;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubListTemplateCard;->f:[Landroid/widget/TextView;

    sget-object v2, Lcom/google/android/systemui/smartspace/uitemplate/SubListTemplateCard;->g:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubListTemplateCard;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, LK2/t;->f(Landroid/view/View;I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubListTemplateCard;->f:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-static {v2, v1}, LK2/t;->f(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t(Landroid/app/smartspace/SmartspaceTarget;Ln1/d;LL2/d;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LK2/n;->r(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/SubListTemplateData;

    invoke-static {v0}, LL2/b;->a(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    move-result v1

    const-string v2, "SubListTemplateCard"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p0, "SubListTemplateData is null or contains invalid template type"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData;->getSubListIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object v1

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubListTemplateCard;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData;->getSubListIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object v5

    invoke-static {v1, v5}, LK2/t;->d(Landroid/widget/ImageView;Landroid/app/smartspace/uitemplatedata/Icon;)V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubListTemplateCard;->e:Landroid/widget/ImageView;

    invoke-static {v1, v3}, LK2/t;->f(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubListTemplateCard;->e:Landroid/widget/ImageView;

    invoke-static {v1, v4}, LK2/t;->f(Landroid/view/View;I)V

    :goto_0
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData;->getSubListTexts()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData;->getSubListTexts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    return v3

    :cond_2
    move v6, v3

    :goto_1
    const/4 v7, 0x3

    if-ge v6, v7, :cond_5

    iget-object v7, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubListTemplateCard;->f:[Landroid/widget/TextView;

    aget-object v7, v7, v6

    if-nez v7, :cond_3

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Missing list item view to update at row: %d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_4

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/smartspace/uitemplatedata/Text;

    invoke-static {v7, v8}, LK2/t;->e(Landroid/widget/TextView;Landroid/app/smartspace/uitemplatedata/Text;)V

    invoke-static {v7, v3}, LK2/t;->f(Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v7, v4}, LK2/t;->f(Landroid/view/View;I)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData;->getSubListAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/SubListTemplateData;->getSubListAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v8

    const-string v10, "SubListTemplateCard"

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    move-object v11, p3

    invoke-static/range {v6 .. v11}, LK2/e;->f(LK2/n;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Ln1/d;Ljava/lang/String;LL2/d;)V

    :cond_6
    return v5
.end method

.method public final u(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/SubListTemplateCard;->f:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Missing list item view to update at row: %d"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SubListTemplateCard"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
