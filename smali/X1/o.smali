.class public final synthetic LX1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/util/AssistContentRequester$Callback;


# instance fields
.field public final synthetic a:LX1/u;


# direct methods
.method public synthetic constructor <init>(LX1/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX1/o;->a:LX1/u;

    return-void
.end method


# virtual methods
.method public final onAssistContentAvailable(Landroid/app/assist/AssistContent;)V
    .locals 7

    iget-object p0, p0, LX1/o;->a:LX1/u;

    iget-boolean v0, p0, LX1/u;->x:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/app/assist/AssistContent;->getWebUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/assist/AssistContent;->getWebUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    if-eqz v0, :cond_5

    iget-object v1, p0, LX1/u;->q:LX1/t;

    if-eqz v1, :cond_5

    iget-boolean p0, p0, LX1/u;->t:Z

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    if-eqz p0, :cond_5

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v0, "Show a URL indicator"

    invoke-static {v0}, LM1/b;->f(Ljava/lang/String;)V

    iget-object v0, p0, LL1/w;->a:LX1/u;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, LX1/u;->x:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, LX1/u;->k()V

    :cond_3
    iget-object v0, p0, LL1/w;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, LL1/A0;

    invoke-direct {v2, v1}, LL1/A0;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, LL1/w;->s:LL1/A0;

    iget-object v1, p0, LL1/w;->k:LX1/s;

    iget v3, p0, LL1/w;->t:I

    iget v4, p0, LL1/w;->u:I

    iput-object p1, v2, LL1/A0;->j:Ljava/lang/String;

    iput-object p0, v2, LL1/A0;->l:LL1/w;

    iget-object v5, v2, LL1/A0;->e:Landroid/widget/ImageButton;

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, v2, LL1/A0;->e:Landroid/widget/ImageButton;

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, v2, LL1/A0;->f:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v2, LL1/A0;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v2, LL1/A0;->f:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, v2, LL1/A0;->e:Landroid/widget/ImageButton;

    new-instance v4, LL1/w0;

    iget-object v5, p0, LL1/w;->j:LV1/u;

    invoke-direct {v4, v2, v5, v1, p1}, LL1/w0;-><init>(LL1/A0;LV1/u;LX1/s;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v2, LL1/A0;->e:Landroid/widget/ImageButton;

    new-instance v4, LL1/x0;

    invoke-direct {v4, v2, v1, p1}, LL1/x0;-><init>(LL1/A0;LX1/s;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    new-instance v1, LL1/v0;

    invoke-direct {v1, v2, p1}, LL1/v0;-><init>(LL1/A0;I)V

    iget-object p1, v2, LL1/A0;->e:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, v2, LL1/A0;->f:Landroid/widget/TextView;

    new-instance v3, LL1/y0;

    invoke-direct {v3, v2}, LL1/y0;-><init>(LL1/A0;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, v2, LL1/A0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, v2, LL1/A0;->e:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p1, v2, LL1/A0;->e:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x85

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, LL1/w;->x:Landroid/widget/FrameLayout;

    if-nez p1, :cond_4

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, LL1/w;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    iget-object p1, p0, LL1/w;->x:Landroid/widget/FrameLayout;

    iget-object p0, p0, LL1/w;->s:LL1/A0;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p0, v5, LV1/u;->a:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_SHARING_SHOW_URL_INDICATOR:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_5
    :goto_1
    return-void
.end method
