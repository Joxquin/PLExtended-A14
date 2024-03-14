.class public final synthetic Lcom/android/quickstep/interaction/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/interaction/TutorialController;

.field public final synthetic e:Le/m;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/TutorialController;Le/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/t;->d:Lcom/android/quickstep/interaction/TutorialController;

    iput-object p2, p0, Lcom/android/quickstep/interaction/t;->e:Le/m;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/t;->d:Lcom/android/quickstep/interaction/TutorialController;

    iget-object p0, p0, Lcom/android/quickstep/interaction/t;->e:Le/m;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->h(Lcom/android/quickstep/interaction/TutorialController;Le/m;Landroid/view/View;)V

    return-void
.end method
