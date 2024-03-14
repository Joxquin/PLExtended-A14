.class public final synthetic Lcom/android/quickstep/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/t1;->d:Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;

    iput p2, p0, Lcom/android/quickstep/t1;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/t1;->d:Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;

    iget p0, p0, Lcom/android/quickstep/t1;->e:I

    invoke-static {v0, p0}, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->v(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;I)V

    return-void
.end method
