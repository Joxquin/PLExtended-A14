.class public Lcom/google/android/systemui/smartspace/DateSmartspaceView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final synthetic i:I


# instance fields
.field public d:Lcom/google/android/systemui/smartspace/IcuDateTextView;

.field public final e:Landroid/app/smartspace/SmartspaceTarget;

.field public final f:Landroid/app/smartspace/SmartspaceAction;

.field public g:Z

.field public final h:LK2/D;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "DateSmartspaceView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/DateSmartspaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/smartspace/DateSmartspaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/app/smartspace/SmartspaceTarget$Builder;

    new-instance p3, Landroid/content/ComponentName;

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "date_card_794317_92634"

    invoke-direct {p2, v1, p3, v0}, Landroid/app/smartspace/SmartspaceTarget$Builder;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    const/4 p3, 0x1

    .line 6
    invoke-virtual {p2, p3}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setFeatureType(I)Landroid/app/smartspace/SmartspaceTarget$Builder;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget$Builder;->build()Landroid/app/smartspace/SmartspaceTarget;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->e:Landroid/app/smartspace/SmartspaceTarget;

    .line 8
    new-instance p2, Landroid/app/smartspace/SmartspaceAction$Builder;

    const-string p3, "dateId"

    const-string v0, "Date"

    invoke-direct {p2, p3, v0}, Landroid/app/smartspace/SmartspaceAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, LK2/e;->e()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/smartspace/SmartspaceAction$Builder;->setIntent(Landroid/content/Intent;)Landroid/app/smartspace/SmartspaceAction$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction$Builder;->build()Landroid/app/smartspace/SmartspaceAction;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->f:Landroid/app/smartspace/SmartspaceAction;

    .line 10
    new-instance p2, LK2/a;

    .line 11
    new-instance p2, LK2/D;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, LK2/D;-><init>(Lcom/google/android/systemui/smartspace/DateSmartspaceView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->h:LK2/D;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const p2, 0x7f1401ec

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 13
    new-instance p0, LK2/F;

    invoke-direct {p0, p1}, LK2/F;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance p0, LK2/F;

    invoke-direct {p0, p1}, LK2/F;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 10

    const-string v0, "doze_always_on"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const/4 v1, 0x0

    const-string v2, "lockscreen"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->h:LK2/D;

    invoke-virtual {v4, v5, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "DateSmartspaceView"

    const-string v6, "Unable to register DOZE_ALWAYS_ON content observer: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v5, v0, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v2, v4

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->g:Z

    :cond_1
    new-instance v0, LL2/c;

    invoke-direct {v0}, LL2/c;-><init>()V

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->e:Landroid/app/smartspace/SmartspaceTarget;

    invoke-static {v2}, LK2/K;->a(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v2

    iput v2, v0, LL2/c;->a:I

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->e:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v2

    iput v2, v0, LL2/c;->e:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, LK2/e;->d(Ljava/lang/String;F)I

    move-result v1

    iput v1, v0, LL2/c;->b:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    iput v3, v0, LL2/c;->g:I

    new-instance v9, LL2/d;

    invoke-direct {v9, v0}, LL2/d;-><init>(LL2/c;)V

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->d:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    iget-object v5, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->e:Landroid/app/smartspace/SmartspaceTarget;

    iget-object v6, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->f:Landroid/app/smartspace/SmartspaceAction;

    const/4 v7, 0x0

    const-string v8, "DateSmartspaceView"

    invoke-static/range {v4 .. v9}, LK2/e;->g(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ln1/d;Ljava/lang/String;LL2/d;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->h:LK2/D;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/IcuDateTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView;->d:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const v0, 0x7f0a0132

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-void
.end method
