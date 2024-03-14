.class public final synthetic LD0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/allapps/WorkProfileManager;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/WorkProfileManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/u;->d:Lcom/android/launcher3/allapps/WorkProfileManager;

    iput-boolean p2, p0, LD0/u;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LD0/u;->d:Lcom/android/launcher3/allapps/WorkProfileManager;

    iget-boolean p0, p0, LD0/u;->e:Z

    invoke-static {v0, p0}, Lcom/android/launcher3/allapps/WorkProfileManager;->b(Lcom/android/launcher3/allapps/WorkProfileManager;Z)V

    return-void
.end method
