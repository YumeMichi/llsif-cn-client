.class Lorg/apache/log4j/chainsaw/ControlPanel$2;
.super Ljava/lang/Object;
.source "ControlPanel.java"

# interfaces
.implements Ljavax/swing/event/DocumentListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/chainsaw/ControlPanel;

.field private final synthetic val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

.field private final synthetic val$threadField:Ljavax/swing/JTextField;


# direct methods
.method constructor <init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->this$0:Lorg/apache/log4j/chainsaw/ControlPanel;

    iput-object p2, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iput-object p3, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$threadField:Ljavax/swing/JTextField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changedUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iget-object v0, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$threadField:Ljavax/swing/JTextField;

    invoke-virtual {v0}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->setThreadFilter(Ljava/lang/String;)V

    return-void
.end method

.method public insertUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iget-object v0, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$threadField:Ljavax/swing/JTextField;

    invoke-virtual {v0}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->setThreadFilter(Ljava/lang/String;)V

    return-void
.end method

.method public removeUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iget-object v0, p0, Lorg/apache/log4j/chainsaw/ControlPanel$2;->val$threadField:Ljavax/swing/JTextField;

    invoke-virtual {v0}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->setThreadFilter(Ljava/lang/String;)V

    return-void
.end method
