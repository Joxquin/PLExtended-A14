.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/T1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

.field public final synthetic e:LJ2/c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;LJ2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/T1;->d:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/T1;->e:LJ2/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T1;->d:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T1;->e:LJ2/c;

    sget v1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->F:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LJ2/c;->d:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iget v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->E:I

    if-eq v2, v1, :cond_2

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->w:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->y:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v3, v2, Landroid/graphics/drawable/Animatable2;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/graphics/drawable/Animatable2;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable2;->start()V

    iget-boolean p0, p0, LJ2/c;->k:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/apps/nexuslauncher/allapps/Y1;

    invoke-direct {p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/Y1;-><init>(Landroid/graphics/drawable/Animatable2;)V

    invoke-interface {v2, p0}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_0
    iput v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->E:I

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->y:Landroid/widget/ImageView;

    iget-object p0, p0, LJ2/c;->d:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :cond_2
    :goto_0
    return-void
.end method
